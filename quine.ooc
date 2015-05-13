import structs/ArrayList
s := [
  "  %c%s%c,",
  "import structs/ArrayList",
  "s := [",
  "] as ArrayList<String>",
  "for (i in 1..3) s[i] println()",
  "for (l in s) s[0] printfln(34,l,34)",
  "for (i in 3..s size) s[i] println()",
] as ArrayList<String>
for (i in 1..3) s[i] println()
for (l in s) s[0] printfln(34,l,34)
for (i in 3..s size) s[i] println()
