require strings

[export]
def main {
  print(s)
  for (c in s) {
    if (c == 34 || c == 123) {
      print(to_char(92))
    }
    print(to_char(c))
  }
  print(to_char(34))
  print(to_char(10))
}

let s = "require strings

[export]
def main \{
  print(s)
  for (c in s) \{
    if (c == 34 || c == 123) \{
      print(to_char(92))
    }
    print(to_char(c))
  }
  print(to_char(34))
  print(to_char(10))
}

let s = \""
