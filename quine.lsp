(let (x (string '(let (x (string '%s)) (println (format x (string x))) (exit)))) (println (format x (string x))) (exit))
