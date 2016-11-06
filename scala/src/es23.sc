def union[T](l1:List[T], l2:List[T]):List[T] = {
  (l1 ::: l2).distinct
}