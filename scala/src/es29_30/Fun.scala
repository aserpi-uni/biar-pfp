package es29_30

import scala.language.implicitConversions

sealed abstract class Fun {
  def apply(x: Double): Double = {
    this match {
      case X() => x
      case Const(i) => i
      case Add(a, b) => a(x) + b(x)
      case Sub(a, b) => a(x) - b(x)
      case Mul(a, b) => a(x) * b(x)
      case Pow(a, i) => math.pow(a(x), i)
    }
  }

  def +(e:Fun) = Add(this, e)
  def -(e:Fun) = Sub(this, e)
  def *(e:Fun) = Mul(this, e)
  def **(i:Int) = Pow(this, i)
  def deriv:Fun = this match {
    case
  }

  override def toString: String = this match {
    case X() => "x"
    case Const(i) => i.toString
    case Add(a, b) => a.toString + " + " + b.toString
    case Sub(a, b) => a.toString + " - " + b.toString
    case Mul(a, b) => a.toString + " * " + b.toString
    case Pow(a, b) => a.toString + " ** " + b.toString
  }
}

case class X() extends Fun

case class Const(i: Int) extends Fun

case class Add(a: Fun, b: Fun) extends Fun

case class Sub(a:Fun, b:Fun) extends Fun

case class Mul(a:Fun, b:Fun) extends Fun

case class Pow(a:Fun, i:Int) extends Fun

object Fun {
  val x = X()

  implicit def intToFun(i: Int): Const = Const(i)
}