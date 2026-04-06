void main() {
  // --- 问题 1 ---
  print("--- 问题 1 ---");
  int a_q1 = 10;
  int b_q1 = 3;


  int additionResult = a_q1 + b_q1;
  print('加法结果 (a + b): $additionResult');


  double divisionResult = a_q1 / b_q1;
  print('除法结果 (a / b): $divisionResult');
  print(""); // 分隔行

  // --- 问题 2 ---
  print("--- 问题 2 ---");

  print('问题2开始时 a 的值: $a_q1');
  a_q1 += 5;
  // 输出修改后的 a 的值。
  print('修改后的 a 的值: $a_q1');
  print(""); // 分隔行

  // --- 问题 3 ---
  print("--- 问题 3 ---");
  int c = 5;


  print('输出 c++ 的结果: ${c++}');


  print('输出此时 c 的值: $c');


  print('输出 ++c 的结果: ${++c}');
  print("");

  // --- 问题 4 ---
  print("--- 问题 4 ---");
  int x = 7;  // 声明整数变量 x 并赋值为 7
  int y = 10; // 声明整数变量 y 并赋值为 10

  // 输出比较结果
  print('x > y: ${x > y}');
  print('x <= y: ${x <= y}');
  print('x == y: ${x == y}');
  print("");

  // --- 问题 5 ---
  print("--- 问题 5 ---");
  bool isRaining = false;
  bool hasUmbrella = true;


  bool canGoOut = !isRaining;


  print('可以出门吗？ $canGoOut');
  print("");

  // --- 问题 6 ---
  print("--- 问题 6 ---");
  int p_q6 = 6;
  int q_q6 = 3;


  int bitwiseAndResult = p_q6 & q_q6;
  print('位与运算结果 (p & q): $bitwiseAndResult');


  int bitwiseOrResult = p_q6 | q_q6;
  print('位或运算结果 (p | q): $bitwiseOrResult');
  print("");

  // --- 问题 7 ---
  print("--- 问题 7 ---");
  int p_q7 = 6;

  int leftShiftResult = p_q7 << 1;
  print('左移结果 (p << 1): $leftShiftResult');


  int rightShiftResult = p_q7 >> 1;
  print('右移结果 (p >> 1): $rightShiftResult');
  print(""); // 分隔行

  // --- 问题 8 ---
  print("--- 问题 8 ---");
  int age = 18;
  String status;


  status = (age >= 20) ? "成人" : "青少年";


  print('年龄: $age');
  print('状态: $status');
  print("");
}