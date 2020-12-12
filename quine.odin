package main

import "core:fmt"

main :: proc() {
	fmt.printf(source, '\x7b', '\x7d', '\x60', source, '\x60');
}

source :: `package main

import "core:fmt"

main :: proc() %c
	fmt.printf(source, '\x7b', '\x7d', '\x60', source, '\x60');
%c

source :: %c%s%c;
`;
