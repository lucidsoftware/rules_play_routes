package rulesplayroutes.test

import javax.inject.Inject
import play.api.mvc._

class NamespaceReverseRoutesController @Inject() (cc: ControllerComponents) extends AbstractController(cc)  {

  def ok(id: Int): Action[AnyContent] = Action { request =>
    Ok
  }

}