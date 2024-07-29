package rulesplayroutes.test

import play.api.mvc.PathBindable

package object binders {
  implicit def pathBinder(implicit intBinder: PathBindable[Int]): PathBindable[User] = {
    new PathBindable[User] {
      override def bind(key: String, value: String): Either[String, User] = {
        for {
          id <- intBinder.bind(key, value)
        } yield User(id)
      }
      override def unbind(key: String, user: User): String = {
        user.id.toString
      }
    }
  }
}