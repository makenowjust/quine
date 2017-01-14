sub b {
  my $s = shift;
  my $q = "";
  for my $c (split //, $s) {
    $q .= "chr(" . ord($c) . ").";
  }
  chop $q;
  print $s, "\n\n", "b($q);\n";
}


b(chr(115).chr(117).chr(98).chr(32).chr(98).chr(32).chr(123).chr(10).chr(32).chr(32).chr(109).chr(121).chr(32).chr(36).chr(115).chr(32).chr(61).chr(32).chr(115).chr(104).chr(105).chr(102).chr(116).chr(59).chr(10).chr(32).chr(32).chr(109).chr(121).chr(32).chr(36).chr(113).chr(32).chr(61).chr(32).chr(34).chr(34).chr(59).chr(10).chr(32).chr(32).chr(102).chr(111).chr(114).chr(32).chr(109).chr(121).chr(32).chr(36).chr(99).chr(32).chr(40).chr(115).chr(112).chr(108).chr(105).chr(116).chr(32).chr(47).chr(47).chr(44).chr(32).chr(36).chr(115).chr(41).chr(32).chr(123).chr(10).chr(32).chr(32).chr(32).chr(32).chr(36).chr(113).chr(32).chr(46).chr(61).chr(32).chr(34).chr(99).chr(104).chr(114).chr(40).chr(34).chr(32).chr(46).chr(32).chr(111).chr(114).chr(100).chr(40).chr(36).chr(99).chr(41).chr(32).chr(46).chr(32).chr(34).chr(41).chr(46).chr(34).chr(59).chr(10).chr(32).chr(32).chr(125).chr(10).chr(32).chr(32).chr(99).chr(104).chr(111).chr(112).chr(32).chr(36).chr(113).chr(59).chr(10).chr(32).chr(32).chr(112).chr(114).chr(105).chr(110).chr(116).chr(32).chr(36).chr(115).chr(44).chr(32).chr(34).chr(92).chr(110).chr(92).chr(110).chr(34).chr(44).chr(32).chr(34).chr(98).chr(40).chr(36).chr(113).chr(41).chr(59).chr(92).chr(110).chr(34).chr(59).chr(10).chr(125).chr(10));
