#!/usr/bin/perl

$a = q{sub b {
  use Digest::MD5 'md5_hex';
  my $q = "";
  $q .= "#!/usr/bin/perl\n\n\$a = q{";
  $q .= $a;
  $q .= "};\n\neval(\$a);\n\nb();\n";
  print md5_hex($q), "\n";
}};

eval($a);

b();
