var s = [
  "  ",
  "var s = [",
  "]",
  "System.print(s[1])",
  "var q = String.fromCodePoint(34)",
  "for (l in s) System.print(s[0] + q + l + q + String.fromCodePoint(44))",
  "for (l in s[2..-1]) System.print(l)",
]
System.print(s[1])
var q = String.fromCodePoint(34)
for (l in s) System.print(s[0] + q + l + q + String.fromCodePoint(44))
for (l in s[2..-1]) System.print(l)
