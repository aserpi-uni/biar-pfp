def sommaQuad(x:Int, y:Int):Int = {
  require(x <= y)
  sommaQuadRec(y, x, 0)
}

@scala.annotation.tailrec
def sommaQuadRec(y:Int, a:Int, r:Int):Int = {
  if (a > y) r
  else sommaQuadRec(y, a + 1, r + a*a)
}