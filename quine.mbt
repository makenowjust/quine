fn main {
  let source =
    #|fn main {
    #|  let source =
    #|    #|
    #|
    #|  let mut i = 0
    #|  source.as_iter().iter(fn (c) {
    #|    print(c)
    #|    if i == 30 {
    #|      source.as_iter().iter(fn (d) {
    #|        print(d)
    #|        if d == '\n' {
    #|          print("    #|")
    #|        }
    #|      })
    #|    }
    #|    i += 1
    #|  })
    #|}
    #|

  let mut i = 0
  source.as_iter().iter(fn (c) {
    print(c)
    if i == 30 {
      source.as_iter().iter(fn (d) {
        print(d)
        if d == '\n' {
          print("    #|")
        }
      })
    }
    i += 1
  })
}
