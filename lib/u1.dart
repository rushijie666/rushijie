void main() {
  // 1. 数值类型
  int num1 = 10;
  double pi = 3.14;
  double num3 = num1 * pi;
  int num4 = (num1 * pi).toInt();

  print("num3 = $num3");
  print("num4 = $num4");

  print("----------------");

  // 2. 字符串类型
  String firstname = "Gildong";
  String sirname = "Hong";
  String fullname = sirname + " " + firstname;

  print("hello, $firstname");
  print("$fullname : ${fullname.length}");

  print("----------------");

  // 3. 布尔类型
  bool aa = false;
  bool bb = (num1 > 0);
  bool chk = aa && bb;

  print("check result is ($chk)");
}