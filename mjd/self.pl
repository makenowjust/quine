

$a = "sub b {
  my \$s = shift;
  my \$q = \$s;
  \$q =~ s/([\\\$\\\\\\\"])/\\\\\$1/g;
  print \"\\n\\n\\\$a = \\\"\$q\\\";\\n\\n\$s\\n\\nb(\\\$a);\\n\";
}";

sub b {
  my $s = shift;
  my $q = $s;
  $q =~ s/([\$\\\"])/\\$1/g;
  print "\n\n\$a = \"$q\";\n\n$s\n\nb(\$a);\n";
}

b($a);
