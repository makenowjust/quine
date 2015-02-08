Module: quine

let c = '"'; let n = '\n'; let b = '\\'; let s = "Module: quine%c%clet c = '%c'; let n = '%cn'; let b = '%c%c'; let s = %c%s%c;format-out(s,n,n,c,b,b,b,c,s,c,n);%c";format-out(s,n,n,c,b,b,b,c,s,c,n);
