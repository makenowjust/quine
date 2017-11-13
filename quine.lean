import system.io
variable [io.interface]
open list
def a :=
["import system.io\nvariable [io.interface]\nopen list\ndef a :=", "#eval (io.print_ln (head a))\n#eval a\n#eval (io.print_ln (head (tail a)))"]
#eval (io.print_ln (head a))
#eval a
#eval (io.print_ln (head (tail a)))
