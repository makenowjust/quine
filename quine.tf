import core from "std";

library main {
  code: [
  "import core from \"std\";

library main {
  code: ",
  ";
  main: () -> code[0] .. core.inspect(code) .. code[1];
}"
];
  main: () -> code[0] .. core.inspect(code) .. code[1];
}
