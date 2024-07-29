package rulesplayroutes.test.common

import rulesplayroutes.test.routes.ReverseRoutesController

object TestReverseRoutesOnly {
  def generate(id: Int): String = ReverseRoutesController.anotherOk(id).path
}