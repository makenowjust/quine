int main() {
  string s = "int main() {\n  string s = %q;\n  write(sprintf(s,s));\n}\n";
  write(sprintf(s,s));
}
