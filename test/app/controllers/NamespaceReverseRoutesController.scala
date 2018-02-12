package rulesplayroutes.test

import play.api.mvc._

class NamespaceReverseRoutesController() extends Controller {

  def ok(id: Int) = Action { request =>
    Ok
  }

}