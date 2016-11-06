def somma(f:Int=>Int):(Int, Int)=>Int = {
  (a:Int, b:Int) => {
    require(a <= b)
    (a to b).map(f(_)).sum
  }
}