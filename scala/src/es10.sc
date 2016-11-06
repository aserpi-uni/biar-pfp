def Fibo(x:Int):Int = {
  require(x > 0)
  FiboRec(0, 1, 1, x)
}

@scala.annotation.tailrec
def FiboRec(p:Int, r:Int, a:Int, t:Int):Int = {
  if (a == t) r
  else FiboRec(r, p+r, a+1, t)
}