package rulesplayroutes.test

import play.api.mvc._

class Controller1() extends Controller {

  def ok() = Action { request =>
    Ok
  }

  def badRequest() = Action { request =>
    BadRequest
  }

  def fiveHundred() = Action { request =>
    InternalServerError
  }
}