package rulesplayroutes.routes

import java.io.File
import java.nio.file.{Files, Paths}
import play.routes.compiler._
import play.routes.compiler.RoutesCompiler.RoutesCompilerTask
import scala.collection.JavaConversions
import scala.io.Source
import scala.reflect.runtime.universe
import scala.Console._

object CommandLinePlayRoutesCompiler {

  case class Config(
    sources: Seq[File] = Seq.empty[File],
    generatedDirectory: File = new File("."),
    additionalImports: Seq[String] = Seq.empty[String],
    routesGenerator: RoutesGenerator = InjectedRoutesGenerator,
    generateReverseRouter: Boolean = false,
    namespaceReverserRouter: Boolean = false
  )

  val parser = new scopt.OptionParser[Config]("scopt") {
    head("Command Line Play Routes Compiler", "0.1")

    arg[File]("<outputDirectory>").required().action { (value, config) =>
      config.copy(generatedDirectory = value)
    }.text("directory to output compiled routes to")

    arg[Seq[File]]("<source1>,<source2>...").unbounded().required().action { (value, config) =>
      config.copy(sources = value)
    }.text("routes to compile")

    opt[String]('i', "routesImport").valueName("<import>").unbounded().action { (value, config) =>
      config.copy(additionalImports = config.additionalImports ++ Seq(value))
    }.text("Imports for the router")

    opt[String]('g', "routesGenerator").valueName("<generator>").maxOccurs(1).action { (value, config) =>
      config.copy(routesGenerator = {
        val runtimeMirror = universe.runtimeMirror(getClass.getClassLoader)
        val module = try {
          runtimeMirror.staticModule(value)
        } catch {
          case e: Exception => {
            throw new Exception("Could not find routes generator class.", e)
          }
        }

        try {
          val obj = runtimeMirror.reflectModule(module)
          obj.instance.asInstanceOf[RoutesGenerator]
        } catch {
          case e: Exception => {
            throw new Exception(s"Could not cast ${value} as a RoutesGenerator", e)
          }
        }
      })
    }.text("The full class of the routes generator, e.g., play.routes.compiler.InjectedRoutesGenerator")

    opt[Unit]('r', "generateReverseRouter").maxOccurs(1).action { (value, config) =>
      config.copy(generateReverseRouter = true)
    }.text("Whether the reverse router should be generated. Setting to false may reduce compile times if it's not needed.")

    opt[Unit]('n', "namespaceReverserRouter").maxOccurs(1).action { (value, config) =>
      config.copy(namespaceReverserRouter = true)
    }.text("Whether the reverse router should be namespaced. Useful if you have many routers that use the same actions.")
  }

  // The generated Routes files include non-reproducible headers
  // We need to remove these for Bazel caching to work
  private def stripHeader(path: String): Unit = {
    val lines = Source.fromFile(path).getLines
    val sansHeader = lines.span(line => line.matches("^(//.*|\\s*)$"))._2.toList
    Files.write(Paths.get(path), JavaConversions.asJavaIterable(sansHeader))
  }

  def main(args: Array[String]): Unit = {
    val config = parser.parse(args, Config()).getOrElse {
      return System.exit(1)
    }

    val didAllSucceed = config.sources.forall { file =>
      RoutesCompiler.compile(
        RoutesCompilerTask(
          file,
          config.additionalImports,
          true,
          config.generateReverseRouter,
          config.namespaceReverserRouter
        ),
        config.routesGenerator,
        config.generatedDirectory
      ) match {
        case Right(generatedFiles) =>
          generatedFiles.foreach { f =>
            stripHeader(f.getPath)
          }
          true
        case Left(errors) =>
          Console.err.println(s"${RESET}${RED}Play Routes Compilation Error:${RESET} Failed to compile routes for ${file}. Errors: ${errors}")
          false
      }
    }

    if (didAllSucceed) {
      System.exit(0)
    } else {
      System.exit(1)
    }
  }
}