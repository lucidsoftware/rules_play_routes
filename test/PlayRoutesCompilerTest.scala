package rulesplayroutes.test

import org.specs2.mutable.Specification
import play.api.test._
import play.api.inject.guice.GuiceApplicationBuilder
import play.api.test.WithApplication
import play.api.test.Helpers._
import rulesplayroutes.test.routes.ReverseRoutesController

class PlayRoutesCompilerTest extends Specification {

  val app = new GuiceApplicationBuilder()

  "Play Routes Compiler when run through Bazel" should {
    "Compile Play routes" in new WithApplication() {
      status(route(app, FakeRequest(GET, "/ok")).get) mustEqual OK
      status(route(app, FakeRequest(GET, "/badRequest")).get) mustEqual BAD_REQUEST
      status(route(app, FakeRequest(GET, "/500")).get) mustEqual INTERNAL_SERVER_ERROR
    }

    "Handle Large Routes files well" in new WithApplication() {
      status(route(app, FakeRequest(GET, "/large/749")).get) mustEqual OK
    }

    "Support multiple routes files" in new WithApplication() {
      status(route(app, FakeRequest(GET, "/ok2")).get) mustEqual OK
      status(route(app, FakeRequest(GET, "/ok3")).get) mustEqual OK
    }

    "Add additional imports when specified" in new WithApplication() {
      status(route(app, FakeRequest(GET, "/okUser/1")).get) mustEqual OK
    }

    // TODO: StaticRoutesGenerator is removed, figure out an alternative.
    // "Use the specified routes generator" in new WithApplication() {
    //   status(route(app, FakeRequest(GET, "/okGenerator")).get) mustEqual OK
    // }

    "Generate reverse routes when specified" in new WithApplication() {
      val myRoute = ReverseRoutesController.ok(3).toString
      val result = route(app, FakeRequest(GET, myRoute)).get
      status(result) mustEqual OK
    }

    // TODO: Add this test once I figure out what this does
    // "Namespace the reverse router when specified" in new WithApplication() {
    // }
  }
}