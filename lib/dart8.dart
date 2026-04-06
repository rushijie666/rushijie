//问题1
import 'dart:io';

void main() {
  print('请输入一个整数:');
  String? input = stdin.readLineSync(); // 1. 从用户输入一个数字

  try {
    int number = int.parse(input!); // 2. 将输入值转换为整数

    // 3. 使用条件语句（if、else if、else）进行判断
    if (number > 0) {
      print('您输入的数字 $number 是正数。');
    } else if (number < 0) {
      print('您输入的数字 $number 是负数。');
    } else {
      print('您输入的数字是 0。');
    }
  } catch (e) {
    // 如果用户输入的不是有效的整数，则捕获异常并提示
    print('输入无效，请输入一个有效的整数。');
  }
}


//问题2
// void main() {
//   // 声明字符串列表 colors
//   List<String> colors = ['Yellow', 'Red', 'Blue'];
//
//   // 使用 for 循环输出所有元素
//   print('--- 使用 for 循环输出 ---');
//   for (int i = 0; i < colors.length; i++) {
//     print(colors[i]);
//   }
//
//   print('\n'); // 添加空行分隔
//
//   // 使用 while 循环实现指定条件
//   print('--- 使用 while 循环输出 ---');
//   int i = 0; // 声明变量 i = 0
//   while (i < colors.length) { // while 条件：i < colors.length
//     print(colors[i]); // 输出元素
//     i++; // 输出元素后执行 i++
//   }
//
//   print('\n'); // 添加空行分隔
//
//   // 使用 do-while 循环实现指定条件
//   print('--- 使用 do-while 循环输出 ---');
//   int j = 3; // 声明变量 j = 3
//   do {
//     print(j); // 输出数字
//     j--; // 每次输出后执行 j--
//   } while (j > 0); // 条件：j > 0
// }