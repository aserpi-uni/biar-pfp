import es32.MyRichList._

val l:List[Int] = List(4,1,2,4,7,0) intersection List(3,3,2,5,3,4,1,7,9)
println(l) // stampa List(7, 2, 1, 4) (in qualsiasi ordine)