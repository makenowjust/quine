let s = "let s = {q}{s}{q}
let q = (char -i 34)
let b = (char -i 123)
{b}s: $s, q: $q, b: $b} | format pattern $s
"
let q = (char -i 34)
let b = (char -i 123)
{s: $s, q: $q, b: $b} | format pattern $s
