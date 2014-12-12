if (!exists("i"))\
  set print "/dev/stdout";\
  i = 0;\
  s = ""\
  . 'if (!exists("i"))$'\
  . '  set print "/dev/stdout";$'\
  . '  i = 0;$'\
  . '  s = ""$'\
  . '  . %;$'\
  . '  r = "";$'\
  . 'else$'\
  . '  if (exists("j") && j <= strlen(s))$'\
  . '    j = j + 1;$'\
  . '    r = r . (s[j:j] eq "\44" ? "\44\47\\\n  . \47" :$'\
  . '             s[j:j] eq "\43" ? "\43\47\\\n  . \47" : s[j:j]);$'\
  . '  else$'\
  . '    i = i + 1;$'\
  . '    if (s[i:i] eq "\45")$'\
  . '      r = r . "\47";$'\
  . '      j = 0;$'\
  . '    else$'\
  . '      r = r . (s[i:i] eq "\44" ? "\\\n" :$'\
  . '               s[i:i] eq "\43" ? "\n" :$'\
  . '               s[i-1:i-1] eq "\45" ? "\47" . s[i:i] : s[i:i]);#'\
  . 'if (i <= strlen(s)) reread;$'\
  . 'else print r;';\
  r = "";\
else\
  if (exists("j") && j <= strlen(s))\
    j = j + 1;\
    r = r . (s[j:j] eq "\44" ? "\44\47\\\n  . \47" :\
             s[j:j] eq "\43" ? "\43\47\\\n  . \47" : s[j:j]);\
  else\
    i = i + 1;\
    if (s[i:i] eq "\45")\
      r = r . "\47";\
      j = 0;\
    else\
      r = r . (s[i:i] eq "\44" ? "\\\n" :\
               s[i:i] eq "\43" ? "\n" :\
               s[i-1:i-1] eq "\45" ? "\47" . s[i:i] : s[i:i]);
if (i <= strlen(s)) reread;\
else print r;
