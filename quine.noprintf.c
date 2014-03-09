#include <stdio.h>

#define NEWLINE      10
#define DOUBLE_QUOTE 34
#define BACK_SLASH   92
#define ATMARK       64

char s[] =
"#include <stdio.h>\n"
"\n"
"#define NEWLINE      10\n"
"#define DOUBLE_QUOTE 34\n"
"#define BACK_SLASH   92\n"
"#define ATMARK       64\n"
"\n"
"char s[] =@;\n"
"\n"
"int main(void) {\n"
"  for (int i = 0; s[i] != 0; i++) {\n"
"    if (s[i] != ATMARK) putchar(s[i]);\n"
"    else {\n"
"      int startline = 1;\n"
"      for (int j = 0; s[j] != 0; j++) {\n"
"        if (startline) {\n"
"          putchar(NEWLINE);\n"
"          putchar(DOUBLE_QUOTE);\n"
"          startline = 0;\n"
"        }\n"
"        switch (s[j]) {\n"
"        case NEWLINE:\n"
"          putchar(BACK_SLASH);\n"
"          putchar('n');\n"
"          putchar(DOUBLE_QUOTE);\n"
"          startline = 1;\n"
"          break;\n"
"        default:\n"
"          putchar(s[j]);\n"
"        }\n"
"      }\n"
"      if (!startline) putchar(DOUBLE_QUOTE);\n"
"    }\n"
"  }\n"
"  return 0;\n"
"}\n";

int main(void) {
  for (int i = 0; s[i] != 0; i++) {
    if (s[i] != ATMARK) putchar(s[i]);
    else {
      int startline = 1;
      for (int j = 0; s[j] != 0; j++) {
        if (startline) {
          putchar(NEWLINE);
          putchar(DOUBLE_QUOTE);
          startline = 0;
        }
        switch (s[j]) {
        case NEWLINE:
          putchar(BACK_SLASH);
          putchar('n');
          putchar(DOUBLE_QUOTE);
          startline = 1;
          break;
        default:
          putchar(s[j]);
        }
      }
      if (!startline) putchar(DOUBLE_QUOTE);
    }
  }
  return 0;
}
