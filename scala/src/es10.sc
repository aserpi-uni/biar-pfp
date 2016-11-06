def Fibo(x:Int):Int = {
  FiboRec(0, 1, 1, x)
}

def FiboRec(p:Int, r:Int, a:Int, t:Int):Int = {
  if (a == t) r
  else FiboRec(r, p+r, a+1, t)
}