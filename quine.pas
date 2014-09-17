program quine;
{$H+}
var
  s : string;
  i : integer;
  j : integer;
begin
  s := 'program quine;'#10 +
       '{$H+}'#10 +
       'var'#10 +
       '  s : string;'#10 +
       '  i : integer;'#10 +
       '  j : integer;'#10 +
       'begin'#10 +
       '  s := %;'#10 +
       '  for i := 1 to length(s) do'#10 +
       '    case s[i] of'#10 +
       '      #37: begin'#10 +
       '        write(#39);'#10 +
       '        for j := 1 to length(s) do'#10 +
       '          case s[j] of'#10 +
       '            #10: write(#39'#39'#10 +'#39'#10'#39'       '#39'#39);'#10 +
       '            #39: write(#39'#39'#39'#39'#39);'#10 +
       '            else write(s[j]);'#10 +
       '          end;'#10 +
       '        write(#39);'#10 +
       '      end;'#10 +
       '      else write(s[i]);'#10 +
       '    end;'#10 +
       '  write(#10);'#10 +
       'end.';
  for i := 1 to length(s) do
    case s[i] of
      #37: begin
        write(#39);
        for j := 1 to length(s) do
          case s[j] of
            #10: write(#39'#10 +'#10'       '#39);
            #39: write(#39'#39'#39);
            else write(s[j]);
          end;
        write(#39);
      end;
      else write(s[i]);
    end;
  write(#10);
end.
