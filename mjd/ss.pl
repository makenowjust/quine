

$a = q{sub b {
  my $s = shift;
  print "\n\n\$a = q{$s};\n\n$s\n\nb(\$a);\n";
}};

sub b {
  my $s = shift;
  print "\n\n\$a = q{$s};\n\n$s\n\nb(\$a);\n";
}

b($a);
