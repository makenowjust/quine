use std.textio.all;
entity quine is
end entity quine;
architecture Quine of quine is
  constant s: string := "use std.textio.all;%nentity quine is%nend entity quine;%narchitecture Quine of quine is%n  constant s: string := %s;%nbegin%n  process is%n    variable L: line;%n    variable c: character;%n    variable f: boolean;%n  begin%n    for i in 1 to 920 loop%n      if (f) then%n        f := FALSE;%n        next;%n      end if;%n      c := s(i);%n      case c is%n        when '%' =>%n          f := TRUE;%n          case s(i + 1) is%n            when 'n' =>%n              writeline(output, L);%n            when 's' =>%n              write(L, '%q');%n              write(L, s);%n              write(L, '%q');%n            when 'q' =>%n              write(L, '%q');%n            when others =>%n              write(L, c);%n              write(L, s(i + 1));%n          end case;%n        when others => write(L, c);%n      end case;%n    end loop;%n    writeline(output, L);%n    wait;%n  end process;%nend architecture Quine;";
begin
  process is
    variable L: line;
    variable c: character;
    variable f: boolean;
  begin
    for i in 1 to 920 loop
      if (f) then
        f := FALSE;
        next;
      end if;
      c := s(i);
      case c is
        when '%' =>
          f := TRUE;
          case s(i + 1) is
            when 'n' =>
              writeline(output, L);
            when 's' =>
              write(L, '"');
              write(L, s);
              write(L, '"');
            when 'q' =>
              write(L, '"');
            when others =>
              write(L, c);
              write(L, s(i + 1));
          end case;
        when others => write(L, c);
      end case;
    end loop;
    writeline(output, L);
    wait;
  end process;
end architecture Quine;
