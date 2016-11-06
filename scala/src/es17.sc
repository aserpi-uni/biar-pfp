def minMax(l:List[Int]):(Int, Int) = {
  require(l.nonEmpty)
  minMaxRec(l, Int.MaxValue, Int.MinValue)
}

@scala.annotation.tailrec
def minMaxRec(l:List[Int], mi:Int, ma:Int):(Int, Int) = {
  if (l.isEmpty) (mi, ma)
  else minMaxRec(l.tail,
    if (mi < l.head) mi else l.head,
    if (ma > l.head) ma else l.head)
}