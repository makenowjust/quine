app "hello"
  packages { pf: "examples/interactive/cli-platform/main.roc" }
  imports [pf.Stdout]
  provides [main] to pf

main = Stdout.line (cat [t0, t1])
t0 = List.walk ss "" \s0, s -> cat [s0, decode s, "\n"]
t1 = List.walkBackwards ss "]" \s1, s -> cat ["  \"", s, "\",\n", s1]

cat = \xs -> List.walk xs "" Str.concat
ascii = \k -> Str.fromUtf8 [k] |> Result.withDefault ""
sub = \s, t, u -> Str.split s t |> Str.joinWith u
decode = \s -> sub s (ascii 63) (ascii 34) |> sub (ascii 64) (ascii 92)

ss = [
  "app ?hello?",
  "  packages { pf: ?examples/interactive/cli-platform/main.roc? }",
  "  imports [pf.Stdout]",
  "  provides [main] to pf",
  "",
  "main = Stdout.line (cat [t0, t1])",
  "t0 = List.walk ss ?? @s0, s -> cat [s0, decode s, ?@n?]",
  "t1 = List.walkBackwards ss ?]? @s1, s -> cat [?  @??, s, ?@?,@n?, s1]",
  "",
  "cat = @xs -> List.walk xs ?? Str.concat",
  "ascii = @k -> Str.fromUtf8 [k] |> Result.withDefault ??",
  "sub = @s, t, u -> Str.split s t |> Str.joinWith u",
  "decode = @s -> sub s (ascii 63) (ascii 34) |> sub (ascii 64) (ascii 92)",
  "",
  "ss = [",
]
