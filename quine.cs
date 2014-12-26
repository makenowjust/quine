using System;
public class Quine
{
  public static void Main()
  {
    string s = "using System;{0}public class Quine{0}{1}{0}{2}public static void Main(){0}{2}{1}{0}{2}{2}string s = {3}{4}{3};{0}{2}{2}Console.WriteLine(String.Format(s,(char)10,(char)123,{3}  {3},(char)34,s,(char)125));{0}{2}{5}{0}{5}";
    Console.WriteLine(String.Format(s,(char)10,(char)123,"  ",(char)34,s,(char)125));
  }
}
