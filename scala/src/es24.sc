def intersection[T](l1:List[T], l2:List[T]):List[T] = {
  if (l1.isEmpty || l2.isEmpty) Nil else intersectionRec(l1, l2, Nil)
}

@scala.annotation.tailrec
def intersectionRec[T](l1:List[T], l2:List[T], r:List[T]):List[T] = {
  if (l1.isEmpty) r
  else intersectionRec(l1.tail, l2,
    if (!r.contains(l1.head) && l2.contains(l1.head)) r :+ l1.head else r)
}