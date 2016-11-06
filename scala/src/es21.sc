@scala.annotation.tailrec
def find[T](x:T, l:List[T]):Boolean = {
  l match {
    case Nil => false
    case h :: t => if (x == h) true else find(x, t)
  }
}