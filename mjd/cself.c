
#include <stdio.h>

char a[] = "void b(void)\n{\n  printf(\"%s\", \"\\n#include <stdio.h>\\n\\nchar a[] = \");\n  puts_quoted(a);\n  puts(\";\\n\");\n  puts(\"void puts_quoted(char *s)\\n{\\n  putchar('\\\"');\\n  while (*s) {\\n    switch (*s) {\\n    case '\\\\n':\\n      printf(\\\"\\\\\\\\n\\\");\\n      break;\\n    case '\\\"': case '\\\\\\\\':\\n      putchar('\\\\\\\\');\\n    default:\\n      putchar(*s);\\n    }\\n    s++;\\n  }\\n  putchar('\\\"');\\n}\\n\");\n  puts(a);\n  puts(\"int main(void) {\\n  b();\\n  return 0;\\n}\");\n}\n";

void puts_quoted(char *s)
{
  putchar('"');
  while (*s) {
    switch (*s) {
    case '\n':
      printf("\\n");
      break;
    case '"': case '\\':
      putchar('\\');
    default:
      putchar(*s);
    }
    s++;
  }
  putchar('"');
}

void b(void)
{
  printf("%s", "\n#include <stdio.h>\n\nchar a[] = ");
  puts_quoted(a);
  puts(";\n");
  puts("void puts_quoted(char *s)\n{\n  putchar('\"');\n  while (*s) {\n    switch (*s) {\n    case '\\n':\n      printf(\"\\\\n\");\n      break;\n    case '\"': case '\\\\':\n      putchar('\\\\');\n    default:\n      putchar(*s);\n    }\n    s++;\n  }\n  putchar('\"');\n}\n");
  puts(a);
  puts("int main(void) {\n  b();\n  return 0;\n}");
}

int main(void) {
  b();
  return 0;
}
