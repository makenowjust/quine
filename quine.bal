import ballerina/io;

public function main() returns error? {
    string[] xs = [
        "import ballerina/io;",
        "",
        "public function main() returns error? {",
        "    string[] xs = [",
        "    ];",
        "    string x1 = xs[xs.length() - 1];",
        "    string x2 = xs[xs.length() - 2];",
        "    check from var [i, x] in xs.enumerate()",
        "        where i < 4",
        "        do {",
        "            io:println(x);",
        "        };",
        "    check from var [i, x] in xs.enumerate()",
        "        where i < xs.length() - 1",
        "        do {",
        "            io:println(x1 + x.toBalString() + x2);",
        "        };",
        "    io:println(x1 + x1.toBalString());",
        "    check from var [i, x] in xs.enumerate()",
        "        where 4 <= i && i < xs.length() - 2",
        "        do {",
        "            io:println(x);",
        "        };",
        "}",
        ",",
        "        "
    ];
    string x1 = xs[xs.length() - 1];
    string x2 = xs[xs.length() - 2];
    check from var [i, x] in xs.enumerate()
        where i < 4
        do {
            io:println(x);
        };
    check from var [i, x] in xs.enumerate()
        where i < xs.length() - 1
        do {
            io:println(x1 + x.toBalString() + x2);
        };
    io:println(x1 + x1.toBalString());
    check from var [i, x] in xs.enumerate()
        where 4 <= i && i < xs.length() - 2
        do {
            io:println(x);
        };
}
