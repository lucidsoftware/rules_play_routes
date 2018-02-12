package rulesplayroutes.test

import play.api.mvc._

class Controller3() extends Controller {

  def ok() = Action { request =>
    Ok
  }

}