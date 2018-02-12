package rulesplayroutes.test

import play.api.mvc._

class Controller2() extends Controller {

  def ok() = Action { request =>
    Ok
  }

}