package rulesplayroutes.routes

import com.google.devtools.build.buildjar.jarhelper.JarCreator
import higherkindness.rules_scala.common.error.AnnexWorkerError
import higherkindness.rules_scala.common.interrupt.InterruptUtil
import higherkindness.rules_scala.common.worker.WorkerMain
import higherkindness.rules_scala.common.sandbox.SandboxUtil
import java.io.{File, PrintStream}
import java.lang.Class
import java.nio.file.{Files, Path, Paths}
import play.routes.compiler._
import play.routes.compiler.RoutesCompiler.RoutesCompilerTask
import scala.collection.mutable.ListBuffer
import scala.jdk.CollectionConverters._
import scala.io.Source
import scala.util.{Try, Success, Failure}
import scopt.Read
import scala.Console._
import scopt.OptionParser

object CommandLinePlayRoutesCompiler extends WorkerMain[Unit] {
  implicit val listPathRead: Read[List[Path]] = Read.reads { commaList =>
    commaList.split(',').view.map(Paths.get(_)).toList
  }

  case class Config(
    var sources: List[Path] = List.empty[Path],
    var outputDirectory: Path = Paths.get("."),
    var outputSrcJar: Path = Paths.get("."),
    var additionalImports: List[String] = List.empty[String],
    var routesGenerator: RoutesGenerator = InjectedRoutesGenerator,
    var generateReverseRouter: Boolean = false,
    var namespaceReverserRouter: Boolean = false,
    var generateForwardsRouter: Boolean = true
  )

  def parser(workDir: Path, out: PrintStream) = new OptionParser[Config]("play-routes-compiler") {
    head("Command Line Play Routes Compiler", "0.1")

    override def displayToOut(msg: String): Unit = out.println(msg)
    override def displayToErr(msg: String): Unit = out.println(msg)
    override def reportError(msg: String): Unit = displayToErr("Error: " + msg)
    override def reportWarning(msg: String): Unit = displayToErr("Warning: " + msg)

    // Do not exit as it causes problems for Bazel workers
    override def terminate(exitState: Either[String, Unit]): Unit = ()

    arg[Path]("<outputDirectory>").required().action { (outputDirectory, config) =>
      config.outputDirectory = SandboxUtil.getSandboxPath(workDir, outputDirectory)
      config
    }.text("directory to output compiled routes to before packaging them in a JAR")

    arg[Path]("<outputSrcJar>").required().action { (outputSrcJar, config) =>
      config.outputSrcJar = SandboxUtil.getSandboxPath(workDir, outputSrcJar)
      config
    }.text("file to output srcjar containing compiled routes to")

    arg[List[Path]]("<source1>,<source2>...").unbounded().required().action { (sources, config) =>
      config.sources = sources.map(SandboxUtil.getSandboxPath(workDir, _))
      config
    }.text("routes to compile")

    opt[String]('i', "routesImport").valueName("<import>").unbounded().action { (routesImport, config) =>
      config.additionalImports = config.additionalImports ++ List(routesImport)
      config
    }.text("Imports for the router")

    opt[String]('g', "routesGenerator").valueName("<generator>").maxOccurs(1).action { (routesGeneratorClassString, config) =>
      config.routesGenerator = {
        try {
          val name = if (routesGeneratorClassString.endsWith("$")) {
            routesGeneratorClassString
          } else {
            routesGeneratorClassString + "$"
          }
          val clazz = Class.forName(name)
          // val clazz = java.lang.Class.forName(name, true, getClass.getClassLoader)
          clazz.getField("MODULE$").get(null).asInstanceOf[RoutesGenerator]
        } catch {
          case e @ (_:Exception | _:LinkageError | _:ExceptionInInitializerError) => {
            throw new Exception(
              s"Could not instantiate a routes generator from the given class: ${routesGeneratorClassString}",
              e,
            )
          }
        }
      }
      config
    }.text("The full class of the routes generator, e.g., play.routes.compiler.InjectedRoutesGenerator")

    opt[Unit]('r', "generateReverseRouter").maxOccurs(1).action { (value, config) =>
      config.generateReverseRouter = true
      config
    }.text("Whether the reverse router should be generated. Setting to false may reduce compile times if it's not needed.")

    opt[Unit]('n', "namespaceReverserRouter").maxOccurs(1).action { (value, config) =>
      config.namespaceReverserRouter = true
      config
    }.text("Whether the reverse router should be namespaced. Useful if you have many routers that use the same actions.")

    opt[Boolean]('f', "generateForwardsRouter").maxOccurs(1).action { (value, config) =>
      config.generateForwardsRouter = value
      config
    }.text("Whether the forwards router should be generated. Setting this to false should allow us to only generate reverse routes for a project")
  }

  // The generated Routes files include non-reproducible headers
  // We need to remove these for Bazel caching to work
  private def stripHeader(path: String): Unit = {
    val lines = Source.fromFile(path).getLines()
    val sansHeader = lines.span(line => line.matches("^(//.*|\\s*)$"))._2.toList
    Files.write(Paths.get(path), sansHeader.asJava)
  }

  /**
   * Do Play Routes compilation and return true if things succeeded, otherwise return false.
   */
  private def compilePlayRoutes(config: Config, out: PrintStream): Try[Unit] =  Try {
    config.sources.foreach { path =>
      RoutesCompiler.compile(
        RoutesCompilerTask(
          path.toFile,
          config.additionalImports,
          config.generateForwardsRouter,
          config.generateReverseRouter,
          config.generateReverseRouter,
          config.namespaceReverserRouter
        ),
        config.routesGenerator,
        config.outputDirectory.toFile(),
      ) match {
        case Right(generatedFiles) =>
          InterruptUtil.throwIfInterrupted()
          generatedFiles.foreach { f =>
            stripHeader(f.getPath)
          }
        case Left(errors) =>
          throw new Exception(
            s"${RESET}${RED}Play Routes Compilation Error:${RESET} Failed to compile routes for ${path}. Errors: ${errors}"
          )
      }
    }
  }

  def generateJar(config: Config): Unit = {
    val jarCreator = new JarCreator(config.outputSrcJar)
    jarCreator.addDirectory(config.outputDirectory)
    jarCreator.setCompression(false)
    jarCreator.setNormalize(true)
    jarCreator.setVerbose(false)
    jarCreator.execute()
  }

  /**
   * Read any args passed in via files, so we can pass them to the arg parser
   */
  private def readArgsFromArgFiles(args: Array[String]): List[String] = {
    val builder = new ListBuffer[String]()
    args.foreach {
      case arg if arg.startsWith("@") => builder.addAll(Files.readAllLines(Paths.get(arg.tail)).asScala)
      case arg => builder.addOne(arg)
    }
    builder.result()
  }

  override def init(args: Option[Array[String]]): Unit = ()

  protected def work(ctx: Unit, args: Array[String], out: PrintStream, workDir: Path, verbosity: Int): Unit = {
    val config = parser(workDir, out).parse(
      readArgsFromArgFiles(args), Config()
    ).getOrElse(throw new AnnexWorkerError(1))
    InterruptUtil.throwIfInterrupted()

    compilePlayRoutes(config, out) match {
      case Success(_) =>
        InterruptUtil.throwIfInterrupted()
        generateJar(config)
      case Failure(e) => throw new AnnexWorkerError(1, "Failed to compile play routes", e)
    }
  }
}