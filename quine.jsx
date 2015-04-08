class _Main {
  static function main(args :string[]) :void {
    [
      "class _Main {",
      "  static function main(args :string[]) :void {",
      "    [",
      "      ",
      "    ].forEach(function (l, i, s) {",
      "      if (i == 3) {",
      "        s.forEach(function (l) {",
      "          log s[i] + JSON.stringify(l) + \",\";",
      "        });",
      "      } else {",
      "        log l;",
      "      }",
      "    });",
      "  }",
      "}",
    ].forEach(function (l, i, s) {
      if (i == 3) {
        s.forEach(function (l) {
          log s[i] + JSON.stringify(l) + ",";
        });
      } else {
        log l;
      }
    });
  }
}
