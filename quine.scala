val src = List(
  "val src = List(",
  "<Quine>",
  ")",
  "src foreach {",
  "  case \"<Quine>\" =>",
  "    println(src map(\"  \\\"\" + _.replaceAll(raw\"\\\\\", raw\"\\\\\\\\\").replaceAll(\"\\n\", raw\"\\n\").replaceAll(\"\\\"\", \"\\\\\\\\\\\"\") + '\"') mkString \",\\n\")",
  "  case s => println(s)",
  "}"
)
src foreach {
  case "<Quine>" =>
    println(src map("  \"" + _.replaceAll(raw"\\", raw"\\\\").replaceAll("\n", raw"\n").replaceAll("\"", "\\\\\"") + '"') mkString ",\n")
  case s => println(s)
}
