def mediaVeicoli(l:List[Int]):Double = {
  l.takeWhile(_ >= 0).sum.toDouble / l.takeWhile(_ >= 0).length
}