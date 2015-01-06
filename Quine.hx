class Quine {
  static public function main():Void {
    var s = ['class Quine {
  static public function main():Void {
    var s = [','];
    var q = String.fromCharCode(39);
    var c = String.fromCharCode(44);
    Sys.println(s[0]+q+s[0]+q+c+q+s[1]+q+s[1]);
  }
}'];
    var q = String.fromCharCode(39);
    var c = String.fromCharCode(44);
    Sys.println(s[0]+q+s[0]+q+c+q+s[1]+q+s[1]);
  }
}
