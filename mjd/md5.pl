#!/usr/bin/perl

use Digest::MD5 'md5_hex';

$a = q{sub b {
  my $q = "";
  $q .= "#!/usr/bin/perl\n\nuse Digest::MD5 'md5_hex';\n\n\$a = q{";
  $q .= $a;
  $q .= "};\n\n$a\n\nb();\n";
  print md5_hex($q), "\n";
}};

sub b {
  my $q = "";
  $q .= "#!/usr/bin/perl\n\nuse Digest::MD5 'md5_hex';\n\n\$a = q{";
  $q .= $a;
  $q .= "};\n\n$a\n\nb();\n";
  print md5_hex($q), "\n";
}

b();
