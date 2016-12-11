package es36_37

object TestSort extends App {
  val l = (1 to 100000).map(_%20).toList

  println("Testing seqMergeSort...")
  Prof.prof(t=>println("seqMergeSort: "+t+" msec")) {
    for (i<-1 to 10) {
      val s = Sort.mergeSortSeq(l)
    }
  }

  println("\nTesting parMergeSort...")
  Prof.prof(t=>println("parMergeSort: "+t+" msec")) {
    for (i<-1 to 10) {
      val s = Sort.mergeSortPar(l)
    }
  }
}
