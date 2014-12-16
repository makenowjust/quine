class QUINE
creation make
feature
  make
    local
      s:STRING
      i,j:INTEGER
    do
      s := "class QUINE%N%
           %creation make%N%
           %feature%N%
           %  make%N%
           %    local%N%
           %      s:STRING%N%
           %      i,j:INTEGER%N%
           %    do%N%
           %      s := $%N%
           %      from%N%
           %        i := 1%N%
           %      until i > s.count%N%
           %      loop%N%
           %        if '%%/36/' = s.item(i) then%N%
           %          io.put_character('%"')%N%
           %          from%N%
           %            j := 1%N%
           %          until j > s.count%N%
           %          loop%N%
           %            inspect s.item(j)%N%
           %            when '%%N' then%N%
           %              io.put_string(%"%%%%N%%%%%")%N%
           %              io.put_new_line%N%
           %              io.put_string(%"           %%%%%")%N%
           %            when '%"' then%N%
           %              io.put_string(%"%%%%%%%"%")%N%
           %            when '%%%%' then%N%
           %              io.put_string(%"%%%%%%%%%")%N%
           %            else%N%
           %              io.put_character(s.item(j))%N%
           %            end%N%
           %            j := j + 1%N%
           %          end%N%
           %          io.put_character('%"')%N%
           %        else%N%
           %          io.put_character(s.item(i))%N%
           %        end%N%
           %        i := i + 1%N%
           %      end%N%
           %      io.put_new_line%N%
           %    end%N%
           %end"
      from
        i := 1
      until i > s.count
      loop
        if '%/36/' = s.item(i) then
          io.put_character('"')
          from
            j := 1
          until j > s.count
          loop
            inspect s.item(j)
            when '%N' then
              io.put_string("%%N%%")
              io.put_new_line
              io.put_string("           %%")
            when '"' then
              io.put_string("%%%"")
            when '%%' then
              io.put_string("%%%%")
            else
              io.put_character(s.item(j))
            end
            j := j + 1
          end
          io.put_character('"')
        else
          io.put_character(s.item(i))
        end
        i := i + 1
      end
      io.put_new_line
    end
end
