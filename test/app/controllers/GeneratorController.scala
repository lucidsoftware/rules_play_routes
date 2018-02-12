package rulesplayroutes.test

import play.api.mvc._

object GeneratorController extends GeneratorController()
class GeneratorController() extends Controller {

  def ok() = Action { request =>
    Ok
  }

}