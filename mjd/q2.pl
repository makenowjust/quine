$A = q{sub B {
  print "\$A = q{$A};\n$A\nB();\n";
}};
sub B {
  print "\$A = q{$A};\n$A\nB();\n";
}
B();
