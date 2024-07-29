package rulesplayroutes.test

import org.specs2.mutable.Specification
import play.api.inject.guice.GuiceApplicationBuilder
import play.api.test.FakeRequest
import play.api.test.WithApplication
import play.api.test.Helpers._
import play.api.Configuration
import rulesplayroutes.test.routes.ReverseRoutesController

class PlayRoutesCompilerTest extends Specification {

  def application = new GuiceApplicationBuilder().configure(Configuration("play.allowGlobalApplication" -> true)).build()

  "Play Routes Compiler when run through Bazel" should {
    "Compile Play routes" in new WithApplication(application) { withApp =>
      override def running() = {
        status(route(withApp.app, FakeRequest(GET, "/ok")).get) mustEqual OK
        status(route(withApp.app, FakeRequest(GET, "/badRequest")).get) mustEqual BAD_REQUEST
        status(route(withApp.app, FakeRequest(GET, "/500")).get) mustEqual INTERNAL_SERVER_ERROR
      }
    }

    "Handle Large Routes files well" in new WithApplication(application) { withApp =>
      override def running() = {
        status(route(withApp.app, FakeRequest(GET, "/large/749")).get) mustEqual OK
      }
    }

    "Support multiple routes files" in new WithApplication(application) { withApp =>
      override def running() = {
        status(route(withApp.app, FakeRequest(GET, "/ok2")).get) mustEqual OK
        status(route(withApp.app, FakeRequest(GET, "/ok3")).get) mustEqual OK
      }
    }

    "Add additional imports when specified" in new WithApplication(application) { withApp =>
      override def running() = {
        status(route(withApp.app, FakeRequest(GET, "/okUser/1")).get) mustEqual OK
      }
    }

    "Use the specified routes generator" in new WithApplication(application) { withApp =>
      override def running() = {
        status(route(withApp.app, FakeRequest(GET, "/okGenerator")).get) mustEqual OK
      }
    }

    "Generate reverse routes when specified" in new WithApplication(application) { withApp =>
      override def running() = {
        val myRoute = ReverseRoutesController.ok(3).toString
        val result = route(withApp.app, FakeRequest(GET, myRoute)).get
        status(result) mustEqual OK
      }
    }

    // TODO: Add this test once I figure out what this does
    // "Namespace the reverse router when specified" in new WithApplication(application) { with App =>
    //   override def running() = {}
    // }
  }
}