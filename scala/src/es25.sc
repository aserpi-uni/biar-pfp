class Rational(numeratore:Int, denominatore:Int) {
  private def mcd(x:Int, y:Int):Int = math.abs(if (y==0) x else mcd(y, x%y))
  private val mcdRis = mcd(numeratore, denominatore)

  val num = if (mcdRis == 1) numeratore else numeratore/mcdRis
  val den = if (mcdRis == 1) denominatore else denominatore/mcdRis

  def + (a2:Rational):Rational = new Rational(this.num*a2.den + a2.num*this.den, this.den*a2.den)
  def - (m2:Rational):Rational = new Rational(this.num*m2.den - m2.num*this.den, this.den*m2.den)
  def * (m2:Rational):Rational = new Rational(this.num*m2.num, this.den*m2.den)
  def / (d2:Rational):Rational = new Rational(this.num*d2.den, this.den*this.num)

  def < (m2:Rational):Boolean = (this - m2).toDouble < 0
  def > (m2:Rational):Boolean = (this - m2).toDouble > 0
  def == (m2:Rational):Boolean = this.num == m2.num && this.den == m2.den

  override def toString() = num + "/" + den
  private def toDouble():Double = this.num.toDouble/this.den
}

val r1 = new Rational(2, 7)
val r2 = new Rational(8, 6)
val r3 = new Rational(4,14)
println(r1+r2)  // stampa 34/21
println(r1-r2)  // stampa -22/21
println(r1*r2)  // stampa 8/21
println(r1/r2)  // stampa 3/14
println(r1==r3) // stampa true
println(r1!=r2) // stampa true
println(r1<r2)  // stampa true
println(r2<r1)  // stampa false