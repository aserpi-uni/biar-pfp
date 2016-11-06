def somma(f:Int=>Int):(Int, Int)=>Int = {
  (a:Int, b:Int) => (a to b).map(f(_)).sum
}