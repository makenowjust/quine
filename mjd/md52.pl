#!/usr/bin/perl

use Digest::MD5 'md5_hex';

$a = q{sub b {
  print md5_hex("#!/usr/bin/perl\n\nuse Digest::MD5 'md5_hex';\n\n\$a = q{$a};\n\n$a\n\nb();\n"), "\n";
}};

sub b {
  print md5_hex("#!/usr/bin/perl\n\nuse Digest::MD5 'md5_hex';\n\n\$a = q{$a};\n\n$a\n\nb();\n"), "\n";
}

b();
