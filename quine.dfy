method Quote(c: char, s: string) returns (r: string)
requires |s| > 18
ensures |s| * 2 + 2 == |r|
{
    r := s[0..|s| - 18] + [c] + s + [c] + s[|s| - 18..|s|];
}

method Main()
{
    var r := Quote('\u0022', @"method Quote(c: char, s: string) returns (r: string)
requires |s| > 18
ensures |s| * 2 + 2 == |r|
{
    r := s[0..|s| - 18] + [c] + s + [c] + s[|s| - 18..|s|];
}

method Main()
{
    var r := Quote('\u0022', @);
    print r;
}
");
    print r;
}
