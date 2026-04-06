import 'dart:io';

void main() {
  String? nickname = stdin.readLineSync(); // 从键盘读取一行输入

  String displayName;

  if (nickname == null || nickname.isEmpty) {
    displayName = 'guest'; // 如果输入为空，则使用 "guest"
  } else {
    displayName = nickname; // 否则，使用用户输入的昵称
  }

  print(displayName); // 输出显示名称
}