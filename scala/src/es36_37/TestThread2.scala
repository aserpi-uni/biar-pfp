package es36_37

import Par._
object TestThread2 extends App {
  par { for (i<-0 to 1000)    println(i) }
  { for (i<-5000 to 6000) println(i) }
}
