open Printf
let s = "open Printf\nlet s = %S\nlet () = printf %S s s;;\n"
let () = printf "open Printf\nlet s = %S\nlet () = printf %S s s;;\n" s s;;
