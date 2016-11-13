package es29_30

import es26_28.Frame2D
import Fun._

object ProvaFun extends App {
  val f = Add(X(), Const(1)) // x+1
  val h = x+1       // equivalente a: Add(X(), Const(1))
  val y = h(10.7)   // stampa 11.7

  val g = Add(Pow(X(), 2), Add(X(), Mul(X(), Add(X(), 3))))
  println(h + " = " + y)

  val l = Model2D.getFunChart(100)(-10, 10)(x=>g(x))
  Frame2D.display(l, 700, 300)

  val z = x**2 - 1
  println(z(4))                      // stampa 15
  println(z.deriv(4))                // stampa 8
  println(z.deriv.deriv(4))          // stampa 2
  println(z.deriv.deriv.deriv(4))    // stampa 0
}