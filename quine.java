class quine {
  public static void main(String[] args) {
    String s = "class quine {\n  public static void main(String[] args) {\n    String s = \"%s\";\n    System.out.printf(s, s.replaceAll(\"\\\\\\\\\", \"\\\\\\\\\\\\\\\\\").replaceAll(\"\\n\", \"\\\\\\\\n\").replaceAll(\"\\\"\", \"\\\\\\\\\\\"\"));\n  }\n}\n";
    System.out.printf(s, s.replaceAll("\\\\", "\\\\\\\\").replaceAll("\n", "\\\\n").replaceAll("\"", "\\\\\""));
  }
}
