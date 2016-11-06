def uguaglia(f1:Int=>Int, f2:Int=>Int, n:Int):Boolean = {
  require(n >= 0)
  (0 to n).map(f1(_)) == (0 to n).map(f2(_))
}