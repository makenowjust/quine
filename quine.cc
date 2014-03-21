#include <string>
#include <vector>
#include <iostream>

void quine(std::vector<std::string> &src) {
  using namespace std;
  char quine_str[] = {'Q', 'U', 'I', 'N', 'E', 0};
  char indent[] = {' ', ' ', ' ', ' ', 0};
  char q = 34;
  
  for (auto s : src) {
    if (s == quine_str) {
      for (auto s : src) {
        cout << indent << q << s << q << ',' << endl;
      }
    } else {
      cout << s << endl;
    }
  }
}

auto main(void) -> int {
  std::vector<std::string> src {
    "#include <string>",
    "#include <vector>",
    "#include <iostream>",
    "",
    "void quine(std::vector<std::string> &src) {",
    "  using namespace std;",
    "  char quine_str[] = {'Q', 'U', 'I', 'N', 'E', 0};",
    "  char indent[] = {' ', ' ', ' ', ' ', 0};",
    "  char q = 34;",
    "  ",
    "  for (auto s : src) {",
    "    if (s == quine_str) {",
    "      for (auto s : src) {",
    "        cout << indent << q << s << q << ',' << endl;",
    "      }",
    "    } else {",
    "      cout << s << endl;",
    "    }",
    "  }",
    "}",
    "",
    "auto main(void) -> int {",
    "  std::vector<std::string> src {",
    "QUINE",
    "  };",
    "  quine(src);",
    "}",
  };
  quine(src);
}
