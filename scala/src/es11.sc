def sommaQuad(x:Int, y:Int):Int = {
  sommaQuadRec(y, x, 0)
}

def sommaQuadRec(y:Int, a:Int, r:Int):Int = {
  if (a > y) r
  else sommaQuadRec(y, a + 1, r + a*a)
}