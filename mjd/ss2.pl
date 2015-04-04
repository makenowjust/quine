$a = q{sub b {my $s = shift;print "\$a = q{$s};$s b(\$a);\n";}};sub b {my $s = shift;print "\$a = q{$s};$s b(\$a);\n";} b($a);
