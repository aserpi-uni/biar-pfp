def repeat(n:Int)(f: =>Unit) = {
  (1 to n).foreach(_ => f)
}

repeat(3) {
  println("ciao")
}