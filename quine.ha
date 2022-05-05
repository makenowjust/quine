use fmt;

export fn main() void = {
	const lines = [
		"use fmt;",
		"",
		"export fn main() void = {",
		"	const lines = [",
		"	];",
		"	for (let i = 0z; i < 4; i += 1) {",
		"		fmt::println(lines[i])!;",
		"	};",
		"	for (let i = 0z; i < len(lines); i += 1) {",
		"		fmt::printfln(lines[len(lines)-1], 34u32: rune, lines[i])!;",
		"	};",
		"	for (let i = 4z; i < len(lines)-1; i += 1) {",
		"		fmt::println(lines[i])!;",
		"	};",
		"};",
		"		{0}{1}{0},",
	];
	for (let i = 0z; i < 4; i += 1) {
		fmt::println(lines[i])!;
	};
	for (let i = 0z; i < len(lines); i += 1) {
		fmt::printfln(lines[len(lines)-1], 34u32: rune, lines[i])!;
	};
	for (let i = 4z; i < len(lines)-1; i += 1) {
		fmt::println(lines[i])!;
	};
};
