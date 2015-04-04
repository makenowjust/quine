$A = q{sub B {
  print "\$A = ";
  print "q{$A};\n";
  print "$A\n";
  print "B();\n";
}};
sub B {
  print "\$A = ";
  print "q{$A};\n";
  print "$A\n";
  print "B();\n";
}
B();
