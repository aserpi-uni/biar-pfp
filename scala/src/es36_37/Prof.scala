package es36_37

object Prof {
  def prof[T](dump:Double=>Unit)(body: =>T):T = {
    val start = System.nanoTime()
    val res = body
    dump((System.nanoTime()-start)/1E6) // milliseconds
    res
  }
}