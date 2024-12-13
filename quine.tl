(let ((s "(let ((s ~s)) (format t s s) (put-line))")) (format t s s) (put-line))
