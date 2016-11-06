def removeDuplicates[T](l:List[T]):List[T] = {
  if (l.isEmpty) Nil else removeDuplicatesRec(l, Nil)
}

@scala.annotation.tailrec
def removeDuplicatesRec[T](l:List[T], r:List[T]):List[T] = {
  removeDuplicatesRec(l.tail, if (r.contains(l.head)) r else r :+ l.head)
}