fun quine(s : string) : console () ->
  (s+s.show+41.char.string).println
fun main() : console () ->
  quine("fun quine(s : string) : console () ->\n  (s+s.show+41.char.string).println\nfun main() : console () ->\n  quine(")
