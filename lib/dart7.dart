import 'dart:io';

void main() {
  // 문제 1: null 병합 연산자 (??) 와 null 조건부 할당 (??=) 사용
  String? name;
  print(name ?? '익명'); // 출력: 익명
  name ??= '홍길동';
  print(name); // 출력: 홍길동

  // 문제 2: null 조건부 멤버 접근 (?.) 와 null이 아닐 때 함수 호출
  String? text;
  print(text?.length); // 출력: null
  print(getLength(text)); // 출력: null

  // 문제 3: 사용자 입력 처리
  print('문자열을 입력하세요:');
  String? input = stdin.readLineSync();
  print(input ?? '기본값'); // 입력이 없을 경우 '기본값' 출력
  print(input?.length); // 입력이 없을 경우 null 출력
  if (input != null) {
    int len = input.length;
    print('길이: $len'); // 입력된 문자열의 길이를 출력합니다.
  } else {
    print('null이라 길이 계산 불가');
  }
}

// 문제 2 함수: 문자열의 길이를 반환하는 함수
// value가 null이 아니면 길이를 반환하고, null이면 null을 반환합니다.
int? getLength(String? value) {
  return value?.length;
}
// void main() {
//   Object a = 'hello';
//   if (a is String) {
//     print('문자열');
//   }
//   if (a is! num) {
//     print('숫자 아님');
//   }
//   String b = a as String;
//   print(b.toUpperCase());
// }
