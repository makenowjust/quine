#!/usr/bin/perl

use Digest::MD5 'md5_hex';

$a = q{print md5_hex("#!/usr/bin/perl\n\nuse Digest::MD5 'md5_hex';\n\n\$a = q{$a};\n\n$a"), "\n";
};

print md5_hex("#!/usr/bin/perl\n\nuse Digest::MD5 'md5_hex';\n\n\$a = q{$a};\n\n$a"), "\n";
