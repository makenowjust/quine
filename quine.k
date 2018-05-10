void main() {
  Array[String] c = [
    "void main() {",
    "  Array[String] c = [",
    "    ",
    ",",
    "  ];",
    "  String q = String.fromCharCode(34);",
    "",
    "  int i = 0;",
    "  while (i < c.length) {",
    "    System.out.println(c[i]);",
    "    if (i == 1) {",
    "      int j = 0;",
    "      while (j < c.length) {",
    "        System.out.println(c[2] + q + c[j] + q + c[3]);",
    "        j += 1;",
    "      }",
    "      i += 2;",
    "    }",
    "    i += 1;",
    "  }",
    "}",
    "",
    "main();",
  ];
  String q = String.fromCharCode(34);

  int i = 0;
  while (i < c.length) {
    System.out.println(c[i]);
    if (i == 1) {
      int j = 0;
      while (j < c.length) {
        System.out.println(c[2] + q + c[j] + q + c[3]);
        j += 1;
      }
      i += 2;
    }
    i += 1;
  }
}

main();
