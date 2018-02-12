package rulesplayroutes.test

import play.api.mvc._

class UserController() extends Controller {

  def ok(user: User) = Action { request =>
    Ok
  }

}