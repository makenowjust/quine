let source = ["let source = ",";","io.print(source[0] .. json.stringify(source) .. source[1]);","for (let i in 2..#source) io.print(source[i]);"];
io.print(source[0] .. json.stringify(source) .. source[1]);
for (let i in 2..#source) io.print(source[i]);
