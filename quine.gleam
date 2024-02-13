import gleam/io
import gleam/list
import gleam/string

pub fn main() {
  let sss = #(
    [
      "import gleam/io",
      "import gleam/list",
      "import gleam/string",
      "",
      "pub fn main() {",
      "  let sss = #(",
    ],
    [
      "  )",
      "  sss.0 |> list.each(io.println)",
      "  [sss.0, sss.1] |> list.each(fn(ss) {",
      "    io.println(\"    [\")",
      "    ss |> list.each(fn(s) {",
      "      io.println(\"      \" <> string.inspect(s) <> \",\")",
      "    })",
      "    io.println(\"    ],\")",
      "  })",
      "  sss.1 |> list.each(io.println)",
      "}",
    ],
  )
  sss.0 |> list.each(io.println)
  [sss.0, sss.1] |> list.each(fn(ss) {
    io.println("    [")
    ss |> list.each(fn(s) {
      io.println("      " <> string.inspect(s) <> ",")
    })
    io.println("    ],")
  })
  sss.1 |> list.each(io.println)
}
