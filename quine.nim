import
  strutils
var
  t = "import\x0A  strutils\x0Avar\x0A  t = $#\x0A(t % t.escape).echo"
(t % t.escape).echo
