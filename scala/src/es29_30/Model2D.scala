package es29_30

import es26_28.Line

object Model2D {
  def getFunChart(steps: Int)(minX: Double, maxX: Double)(f: Double => Double) = {
    require(steps >= 2 && minX <= maxX)
    def x(min: Double, max: Double, i: Int) = min + i * (max - min) / steps
    def norm(min: Double, max: Double, x: Double) = (x - min) / (max - min)
    val (minY, maxY) =
      Stream.range(0, steps + 1)
        .map {
          i => {
            val y = f(x(minX, maxX, i))
            (y, y)
          }
        }.reduce { (a, b) => (a._1 min b._1, a._2 max b._2) }
    val s = for {
      i <- 1 to steps
      val x1 = x(0, 1, i - 1)
      val x2 = x(0, 1, i)
      val y1 = norm(minY, maxY, f(x(minX, maxX, i - 1)))
      val y2 = norm(minY, maxY, f(x(minX, maxX, i)))
    } yield new Line(x1, y1, x2, y2)
    val zeroX = norm(minX, maxX, 0)
    val zeroY = norm(minY, maxY, 0)
    new Line(zeroX, 0, zeroX, 1) :: new Line(0, zeroY, 1, zeroY) :: s.toList
  }
}