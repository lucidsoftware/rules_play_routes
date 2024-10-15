package rulesplayroutes.test

import org.specs2.mutable.Specification
import play.api.Configuration
import play.api.inject.guice.GuiceApplicationBuilder
import play.api.test.WithApplication
import rulesplayroutes.test.common.TestReverseRoutesOnly
import rulesplayroutes.test.routes.ReverseRoutesController

class PlayReverseRoutesOnlyTest extends Specification {
  val app = new GuiceApplicationBuilder().configure(Configuration("play.allowGlobalApplication" -> true)).build()

  "Play Routes Compiler when run through Bazel" should {
    "Compiles reverse routes in shared project correctly" in new WithApplication(app) { withApp =>
      override def running() = {
        // The common project generates the correct reverse route.
        TestReverseRoutesOnly.generate(10) mustEqual("/okReverseAgain/10")

        // This verifies availability of the reverse route for the test target.
        ReverseRoutesController.anotherOk(20).path mustEqual("/okReverseAgain/20")
      }
    }

  }
}
