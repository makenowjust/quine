        identification division.
        program-id. quine.
        data division.
        working-storage section.
        01 s-tbl.
          10 s pic x(70) occurs 26.
        01 i pic 9(2).
        01 j pic 9(2).
        procedure division.
          move "identification division." to s(01)
          move "program-id. quine." to s(02)
          move "data division." to s(03)
          move "working-storage section." to s(04)
          move "01 s-tbl." to s(05)
          move "  10 s pic x(70) occurs 26." to s(06)
          move "01 i pic 9(2)." to s(07)
          move "01 j pic 9(2)." to s(08)
          move "procedure division." to s(09)
          move "  perform varying i" to s(10)
          move "  from 1 by 1 until i > 26" to s(11)
          move "    if i = 10 then" to s(12)
          move "      perform varying j" to s(13)
          move "      from 1 by 1 until j > 26" to s(14)
          move "        display" to s(15)
          move "        '          move '" to s(16)
          move "        x'22'" to s(17)
          move "        s(j)(1:stored-char-length(s(j)))" to s(18)
          move "        x'22'" to s(19)
          move "        ' to s('j')'" to s(20)
          move "      end-perform" to s(21)
          move "    end-if" to s(22)
          move "    display '        '" to s(23)
          move "    s(i)(1:stored-char-length(s(i)))" to s(24)
          move "  end-perform" to s(25)
          move "  stop run." to s(26)
          perform varying i
          from 1 by 1 until i > 26
            if i = 10 then
              perform varying j
              from 1 by 1 until j > 26
                display
                '          move '
                x'22'
                s(j)(1:stored-char-length(s(j)))
                x'22'
                ' to s('j')'
              end-perform
            end-if
            display '        '
            s(i)(1:stored-char-length(s(i)))
          end-perform
          stop run.
