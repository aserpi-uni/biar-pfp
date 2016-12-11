package es36_37

import Par._

object Sort {
  def mergeSortSeq[T<%Ordered[T]](l:List[T]):List[T] = {
    if (l.length <= 4)
      l.sorted
    else {
      val v = l.splitAt(l.length/2)
      println("Splitting at " + l.length/2)
      (mergeSortSeq(v._1) ::: mergeSortSeq(v._2)).sorted
    }
  }

  def mergeSortPar[T<%Ordered[T]](l:List[T]):List[T] = {
    if (l.length <= 2)
      l.sorted
    else {
      val v = l.splitAt(l.length/2)
      val v2 = par {mergeSortSeq(v._1)}{mergeSortSeq(v._2)}
      (v2._1 ::: v2._2 ).sorted
    }
  }
}
