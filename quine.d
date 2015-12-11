const string s = q"Q
import std.stdio;
void main() {
  writef(`const string s = q"Q
%sQ";
mixin(s);
`, s);
}
Q";
mixin(s);
