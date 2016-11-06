def filter[T](l:List[T], f:T=>Boolean):List[T] = {
  filterRec(l, f, Nil)
}

@scala.annotation.tailrec
def filterRec[T](l:List[T], f:T=>Boolean, r:List[T]):List[T] = {
  if (l.isEmpty) r
  else filterRec(l.tail, f, if (f(l.head)) r :+ l.head else r)
}