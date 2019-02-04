module quine

import StdFile, StdList

Quine :: *File [{#Char}] -> *File
Quine io ss = foldl f2 (foldl f1 io ss`) ss` <<< toChar 32 <<< toChar 34 <<< toChar 34 <<< toChar 93 <<< toChar 10
where
  f1 io` s = io` <<< s <<< toChar 10
  f2 io` s = io` <<< toChar 32 <<< toChar 34 <<< s <<< toChar 34 <<< toChar 44 <<< toChar 10
  ss` = init ss

Start :: *World -> *File
Start world = let (io, _) = stdio world in Quine io [
 "module hello",
 "",
 "import StdFile, StdList",
 "",
 "Quine :: *File [{#Char}] -> *File",
 "Quine io ss = foldl f2 (foldl f1 io ss`) ss` <<< toChar 32 <<< toChar 34 <<< toChar 34 <<< toChar 93 <<< toChar 10",
 "where",
 "  f1 io` s = io` <<< s <<< toChar 10",
 "  f2 io` s = io` <<< toChar 32 <<< toChar 34 <<< s <<< toChar 34 <<< toChar 44 <<< toChar 10",
 "  ss` = init ss",
 "",
 "Start :: *World -> *File",
 "Start world = let (io, _) = stdio world in Quine io [",
 ""]
