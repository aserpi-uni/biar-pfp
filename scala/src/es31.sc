case class Studente(val nome: String, val età: Int, val esami: List[String])

val q = List(
  Studente("Marco", 23, List("PFP", "SC")),
  Studente("Laura", 19, List("SC", "FI1", "PFP")),
  Studente("Stefano", 23, List("SC", "FI1")),
  Studente("Marco", 25, List("SC", "FI1", "FI2")),
  Studente("Paola", 22, List("SC", "PFP"))
)

val query1 = for {
  s <- q
  if s.età >= 20 && s.età <= 24 && s.esami.contains("PFP")
} yield s

val query2 = for {
  s <- q
  if s.età < 24 && s.esami.length >= 2
} yield s

query1.foreach(println(_))
println()
query2.foreach(println(_))