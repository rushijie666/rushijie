void main() {
  // 1. 数字 -> 字符串转换
  int num1 = 10;
  double num2 = 3.141592;

  print("num1 to str is ${num1.toString()}");
  // 保留两位小数输出
  print("num2 to str is ${num2.toStringAsFixed(2)}");

  // 2. 字符串 -> 数字转换
  int num3 = int.parse("-12");
  double num4 = double.parse("123.4567");
  double num5 = double.parse("-34.56");

  print(num3);
  print(num4);
  print(num5);
}