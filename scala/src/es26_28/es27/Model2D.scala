package es26_28.es27

import es26_28._

object Model2D {
  def getToroidalMandala(petals:Int):List[Shape] =
    (0.0 until 2 * math.Pi by 2 * math.Pi/petals)
      .map((x:Double) => new Circle(0.5 + 0.25*math.sin(x), 0.5 + 0.25*math.cos(x), 0.25))
      .toList

  def main(args:Array[String]) {
    println("Displaying Toroidal Mandala...")
    Frame2D.display(Model2D.getToroidalMandala(24), 500, 500)
  }
}