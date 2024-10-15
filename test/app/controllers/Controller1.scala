package rulesplayroutes.test

import javax.inject.Inject
import play.api.mvc._

class Controller1 @Inject() (cc: ControllerComponents) extends AbstractController(cc)  {

  def ok(): Action[AnyContent] = Action { request =>
    Ok
  }

  def badRequest(): Action[AnyContent] = Action { request =>
    BadRequest
  }

  def fiveHundred(): Action[AnyContent] = Action { request =>
    InternalServerError
  }
}