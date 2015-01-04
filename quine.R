s <- c("s <- ", "cat(s[1])\ndput(s)\ncat(s[2])\n")
cat(s[1])
dput(s)
cat(s[2])
