def componi(f1:(Int=>Int), f2:(Int=>Int)):Int=>Int = {
  a:Int => f1(f2(a))
}