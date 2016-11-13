package es26_28.es26

import es26_28._

object Model2D {

  //se si vogliono avere 2n linee, le ultime coincidenti con i bordi della finestra
  def getGrid(n:Int):List[Shape] = {
    (1 to n)  //until se si vogliono avere 2n-2 linee centrate
      .map(_.toDouble / n)  //.map((x:Int) => x.toDouble / (n + 1)) se si vogliono avere 2n linee centrate
      .flatMap(
        (x:Double) => List(new Line(x, 0.0, x, 1.0), new Line(0.0, x, 1.0, x)))
      .toList
  }

  def main(args:Array[String]) {
    println("Displaying 20x20 grid...")
    Frame2D.display(Model2D.getGrid(20), 500, 500)
  }
}