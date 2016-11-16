package es32

import scala.language.implicitConversions

class MyRichList[T](val l: List[T]) {
  def intersection[T](l: List[T]) = {
    l.distinct.filter(this.l.contains(_))
  }
}

object MyRichList {
  implicit def ListToMyRichList[T](l: List[T]):MyRichList[T] = new MyRichList[T](l)

  implicit def MyRichListToList[T](r:MyRichList[T]):List[T] = r.l
}