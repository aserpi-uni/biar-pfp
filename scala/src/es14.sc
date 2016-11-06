def max(l:List[String]):String = {
  l.reduce((a:String, b:String) => if (a.length > b.length) a else b)
}