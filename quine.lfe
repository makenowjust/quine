(let ((s "(let ((s ~p))~n  (io:format s (list s)))~n"))
  (io:format s (list s)))
