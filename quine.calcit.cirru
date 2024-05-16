let
    s $ do "|let\n    s $ %    p $ .nth s 12\n  println $ .replace s p (rest (format-cirru-edn s))"
    p $ .nth s 12
  println $ .replace s p (rest (format-cirru-edn s))
