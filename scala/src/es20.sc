def inferiori(l:List[Int]):List[(Int,Int)] = {
  val lOrd:List[Int] = l.sorted
  if (lOrd.isEmpty) Nil
  else inferioriRec(lOrd.tail, lOrd.head, 1, List((lOrd.head, 0)))
}

@scala.annotation.tailrec
def inferioriRec(l:List[Int], pre:Int, sum:Int, r:List[(Int, Int)]):List[(Int, Int)] = {
  if (l.isEmpty) r
  else if (l.head == pre) inferioriRec(l.tail, pre, sum + 1, r)
  else inferioriRec(l.tail, l.head, sum + 1, r :+ (l.head, sum))
}