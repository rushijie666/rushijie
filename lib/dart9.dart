void main() {

  List<int> statusCodes = [100, 200, 301, 302, 999];
  print('--- 使用 for 循环和 switch 语句处理状态码 ---');
  for (int code in statusCodes) {

    switch (code) {
      case 100:
        print('$code : OPEN');
        break;
      case 200:
        print('$code : APPROVED');
        break;
      case 301:
      case 302:
        print('$code : DENIED with Error');
        break;
      case 999:
        print('$code : unknown status');
        break;
      default: 
        print('$code : Unhandled status code');
        break;
    }
  }
}