import strutils
var
  s = "import strutils\x0Avar\x0A  s = $#\x0A(s % s.escape).echo"
(s % s.escape).echo
