fun quine(q :: String, {p :: String; s :: String}) -> Option:
  block:
    print([list: p, q, "``", p, "``", q, "; ", to-repr(s), s].join-str(""))
    none
  end
where:
  quine(string-from-code-point(96), {```fun quine(q :: String, {p :: String; s :: String}) -> Option:
  block:
    print([list: p, q, "``", p, "``", q, "; ", to-repr(s), s].join-str(""))
    none
  end
where:
  quine(string-from-code-point(96), {```; "}) is none\nend\n# "}) is none
end
# Looks shipshape, your test passed, mate!
