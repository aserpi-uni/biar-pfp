@scala.annotation.tailrec
def equals(l1:List[Int], l2:List[Int]):Boolean = {
  if (l1.isEmpty && l2.isEmpty) true
  else if ((l1.isEmpty && l2.nonEmpty) || (l1.nonEmpty && l2.isEmpty)) false
  else if (l1.head != l2.head) false
  else equals(l1.tail, l2.tail)
}