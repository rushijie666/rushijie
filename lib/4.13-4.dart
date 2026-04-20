void printEvenMessage(int num) {
  print('$num is an even number');
}
void printOddMessage(int num) {
  print('$num is an odd number');
}
void runCheck(Function func, int num) {
  func(num);
}
void main() {
  int num;
  Function func;
  num = 7;
  func = num.isEven ? printEvenMessage : printOddMessage;
  runCheck(func, num);
  num = 10;
  func = num.isEven ? printEvenMessage : printOddMessage;
  runCheck(func, num);
}