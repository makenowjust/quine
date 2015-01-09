import static extension java.lang.String.format;
class Quine {
  def static void main(String[] args) {
    val s = "import static extension java.lang.String.format;
class Quine {
  def static void main(String[] args) {
    val s = %c%s%c;
    println(s.format(34,s,34));
  }
}";
    println(s.format(34,s,34));
  }
}
