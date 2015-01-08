class Quine
{
  static Void main()
  {
    s := "\n    echo(\"class Quine\n          {\n            static Void main()\n            {\n              s := \$s.toCode\$s\")\n  }\n}"
    echo("class Quine
          {
            static Void main()
            {
              s := $s.toCode$s")
  }
}
