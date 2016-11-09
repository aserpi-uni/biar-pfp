object Model2D {

  def getGrid(n:Int):List[Shape] = {
    val l = (1 to n).map(_ * (1.0/n))

    (for { x <- l } yield { new Line(x, 0.0, x, 1.0) }).toList :::
    (for { y <- l } yield new Line(0.0, y, 1.0, y)).toList
  }

  def main(args:Array[String]) {
    println("Displaying 20x20 grid...")
    Frame2D.display(Model2D.getGrid(20), 500, 500)
  }
}