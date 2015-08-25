actor Main
  new create(env : Env) =>
    let ls = [
      "actor Main",
      "  new create(env : Env) =>",
      "    let ls = [",
      "      ",
      "    ].truncate(16)",
      "    let q = String.from_utf32(34)",
      "    for l in ls.values() do",
      "      if try ls(3) == l else false end then",
      "        for r in ls.values() do",
      "          env.out.print(l + q + r + q + String.from_utf32(44))",
      "        end",
      "        env.out.print(l + q + q)",
      "      else",
      "        env.out.print(l)",
      "      end",
      "    end",
      ""
    ].truncate(16)
    let q = String.from_utf32(34)
    for l in ls.values() do
      if try ls(3) == l else false end then
        for r in ls.values() do
          env.out.print(l + q + r + q + String.from_utf32(44))
        end
        env.out.print(l + q + q)
      else
        env.out.print(l)
      end
    end
