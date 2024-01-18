import std::io;

macro @quine(#body)
{
	io::printfn("%s", #body);
	io::printfn("\t@quine(%s);\n}", $stringify(#body));
}

fn void main()
{
	@quine("import std::io;\n\nmacro @quine(#body)\n{\n\tio::printfn(\"%s\", #body);\n\tio::printfn(\"\\t@quine(%s);\\n}\", $stringify(#body));\n}\n\nfn void main()\n{");
}
