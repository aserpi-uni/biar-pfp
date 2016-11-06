def isPrimo(x:Int):Boolean = {
  require(x > 1)
  isPrimoRec(x, x - 1)
}

@scala.annotation.tailrec
def isPrimoRec(x:Int, y:Int):Boolean = {
  if (y == 1) true
  else if (x%y == 0) false
  else isPrimoRec(x, y - 1)
}