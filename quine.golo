module Quine
function main = |args| {
  let s = "module Quine%cfunction main = |args| {%c  let s = %c%s%c%c  println(s: format(10,10,34,s,34,10,10))%c}"
  println(s: format(10,10,34,s,34,10,10))
}
