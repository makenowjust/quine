import std.stdio;

void main() {
  string s = q"EOS
import std.stdio;

void main() {
  string s = q"EOS
%sEOS";
  writef(s, s);
}
EOS";
  writef(s, s);
}
