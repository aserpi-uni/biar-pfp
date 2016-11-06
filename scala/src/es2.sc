def sommaQuad(x:Int, y:Int):Int = {
  require(x <= y)
  (x to y).map((a:Int) => a*a).sum
}