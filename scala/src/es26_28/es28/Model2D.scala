package es26_28.es28

import es26_28._

object Model2D {
  def getLinesModel(n: Int): List[Shape] =
    (0.0 to 1.0 by 1.0 / n)
      .flatMap((x:Double) => List(
          new Line(0.0, x, x, 1.0),
          new Line(x, 0.0, 1.0, x),
          new Line(0.0, 1 - x, x, 0.0),
          new Line(1 - x, 1.0, 1.0, x)))
      .toList

  def main(args: Array[String]) {
    println("Displaying Figure...")
    Frame2D.display(Model2D.getLinesModel(40), 500, 500)
  }
}