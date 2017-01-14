

$a = q{sub b {
  print "\n\n\$a = q{$a};\n\n$a\n\nb();\n";
}};

sub b {
  print "\n\n\$a = q{$a};\n\n$a\n\nb();\n";
}

b();
