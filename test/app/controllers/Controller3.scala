package rulesplayroutes.test

import javax.inject.Inject
import play.api.mvc._

class Controller3 @Inject() (cc: ControllerComponents) extends AbstractController(cc)  {

  def ok(): Action[AnyContent] = Action { request =>
    Ok
  }

}