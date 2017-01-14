$a = q{sub b {my $s = shift;print "\$a = q{$s};\n       $s\nb(\$a);\n";}};
       sub b {my $s = shift;print "\$a = q{$s};\n       $s\nb(\$a);\n";}
b($a);
