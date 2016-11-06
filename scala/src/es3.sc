def sqrt(x:Int):Double = {
  sqrtRec(x, 1, 0.0001)
}

def sqrtRec(x:Int, y:Double, e:Double):Double = {
  println(y)
  if ((scala.math.pow(y, 2) < x + e) && (scala.math.pow(y, 2) > x - e)) y
  else sqrtRec(x, (y + x/y)/2, e)
}