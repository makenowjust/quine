def main(): Str = ((q, s) -> String.toList(s) |>
  List.flatMap(c -> if (c == String.charAt(210, s)) c :: q :: c :: Nil else c :: Nil) |>
  (ss -> List.toString <| ss ::: (q :: String.toList(s) ::: q :: Nil)))('"') <| "def main(): Str = ((q, s) -> String.toList(s) |>
  List.flatMap(c -> if (c == String.charAt(210, s)) c :: q :: c :: Nil else c :: Nil) |>
  (ss -> List.toString <| ss ::: (q :: String.toList(s) ::: q :: Nil)))(') <| "
