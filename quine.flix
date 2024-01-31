def expand(sub: List[(a, String)], s: String): String with ToString[a] =
    List.foldLeft(
        t -> kv ->
            let (k, v) = kv;
            String.replaceMatches(regex = "[{]${k}}", to = v, t),
        s,
        sub
    )

def main(): Unit \ IO =
    let sub = List#{('q', "\""), ('b', "\\\\"), ('d', "\\$")};
    List.forEach(s -> expand(sub, s) |> println, ss());
    List.forEach(s -> println("    \"${s}\" ::"), ss());
    println("    Nil")

def ss(): List[String] =
    "def expand(sub: List[(a, String)], s: String): String with ToString[a] =" ::
    "    List.foldLeft(" ::
    "        t -> kv ->" ::
    "            let (k, v) = kv;" ::
    "            String.replaceMatches(regex = {q}[{]{d}{k}}{q}, to = v, t)," ::
    "        s," ::
    "        sub" ::
    "    )" ::
    "" ::
    "def main(): Unit {b} IO =" ::
    "    let sub = List#{('q', {q}{b}{q}{q}), ('b', {q}{b}{b}{b}{b}{q}), ('d', {q}{b}{b}{d}{q})};" ::
    "    List.forEach(s -> expand(sub, s) |> println, ss());" ::
    "    List.forEach(s -> println({q}    {b}{q}{d}{s}{b}{q} ::{q}), ss());" ::
    "    println({q}    Nil{q})" ::
    "" ::
    "def ss(): List[String] =" ::
    Nil
