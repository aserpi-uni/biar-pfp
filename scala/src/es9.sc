def isPrimo(x:Int):Boolean = {
  isPrimoRec(x, x - 1)
}

def isPrimoRec(x:Int, y:Int):Boolean = {
  if (y == 1) false
  else if (x%y == 0) true
  else isPrimoRec(x, y - 1)
}