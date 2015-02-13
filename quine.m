#!/usr/bin/mira -exp
lay (quine ++ ["quine = " ++ show quine])
quine = ["#!/usr/bin/mira -exp","lay (quine ++ [\"quine = \" ++ show quine])"]
