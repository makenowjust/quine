shared void run() {
  value b = "\{REVERSE SOLIDUS}";
  value q = "\{QUOTATION MARK}";
  value i = "\n               ";
  value s = """shared void run() {
                 value b = "&{REVERSE SOLIDUS}";
                 value q = "&{QUOTATION MARK}";
                 value i = "&n               ";
                 value s = %%%$%%%;
                 printAll {
                   values = { for (c in s) (c == #0024.character then "".join { for (c in s) c == #000A.character then i else String {c}})
                                      else (c == #0025.character then q)
                                      else (c == #0026.character then b)
                                      else  c};
                   separator = "";
                 };
               }""";
  printAll {
    values = { for (c in s) (c == #0024.character then "".join { for (c in s) c == #000A.character then i else String {c}})
                       else (c == #0025.character then q)
                       else (c == #0026.character then b)
                       else  c};
    separator = "";
  };
}
