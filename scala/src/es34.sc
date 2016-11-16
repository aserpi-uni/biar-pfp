def vecprod(v1:Array[Double], v2:Array[Double]) = {
  require(v1.length == v2.length)
  v1.indices.map(i => v1(i)*v2(i)).sum
}