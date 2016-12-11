package es35


class Pila[T] {
  private var l:List[T] = Nil

  def isEmpty() = this.l.isEmpty

  def pop():T = {
    val e = this.l.head
    this.l = this.l.tail
    e
  }

  def push(elem:T) = {
    this.l = elem :: this.l
  }

  def top():T = this.l.head
}
