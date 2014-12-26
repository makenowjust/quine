Imports System
Module Main
  Sub Main()
    Dim s As String = "Imports System{0}Module Main{0}  Sub Main(){0}    Dim s As String = {1}{2}{1}{0}    Console.WriteLine(s,Chr(10),Chr(34),s){0}  End Sub{0}End Module"
    Console.WriteLine(s,Chr(10),Chr(34),s)
  End Sub
End Module
