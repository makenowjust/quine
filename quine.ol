from console import Console

service Quine {
  embed Console as Console

  main {
    q[#q] = "from console import Console

service Quine {
  embed Console as Console

  main {
    q[#q] = "
    q[#q] = "\""
    q[#q] = "\\"
    q[#q] = "    q[#q] = "
    q[#q] = "    println@Console(q[0] + q[1] + q[0] + q[1])()
    println@Console(q[3] + q[1] + q[2] + q[1] + q[1])()
    println@Console(q[3] + q[1] + q[2] + q[2] + q[1])()
    println@Console(q[3] + q[1] + q[3] + q[1])()
    println@Console(q[3] + q[1] + q[4] + q[1])()
    println@Console(q[4])()
  }
}"
    println@Console(q[0] + q[1] + q[0] + q[1])()
    println@Console(q[3] + q[1] + q[2] + q[1] + q[1])()
    println@Console(q[3] + q[1] + q[2] + q[2] + q[1])()
    println@Console(q[3] + q[1] + q[3] + q[1])()
    println@Console(q[3] + q[1] + q[4] + q[1])()
    println@Console(q[4])()
  }
}
