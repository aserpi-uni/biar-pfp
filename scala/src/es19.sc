def allDistinct[Int] (l: List[Int]): Boolean = {
  l.sorted.sliding(2).toList.forall(x => x.head != x(1))
}