void main() {

  void printUserInfo(String name, {required int age, String gender = 'unknown'}) {
    print('name: $name, age:$age, gender:$gender');
  }
  void printStudentInfo(String name, {required int age, String major = '未定'}) {
    print('姓名：$name，年龄：$age，专业：$major');
  }

  printStudentInfo('여세걸', age: 21, major: '소프트웨어 공학');

  printStudentInfo('세걸', age: 19);

}