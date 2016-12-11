package es36_37

object Par {
  def par[T1, T2](fun1: =>T1)(fun2: =>T2): (T1, T2) = {
    var r1:Option[T1] = None
    val t = new Thread(new Runnable {
      def run() = r1 = Some(fun1)
    })
    t.start()
    val r2 = fun2
    t.join()
    (r1.get, r2)
  }
}
