package rulesplayroutes.test

import play.api.mvc._

class ReverseRoutesController() extends Controller {

  def ok(id: Int) = Action { request =>
    Ok
  }

}