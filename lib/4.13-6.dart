class Student {
  String name;
  int grade;
  Student(this.name, this.grade);
  void introduce() {
    print('你好，我是$name，是$grade年级学生。');
  }
}
void main() {

  Student student1 = Student('어세걸', 2);
  print("--- Using normal object creation ---");
  student1.introduce();
  print("\n--- Using cascade notation ---");
  Student student2 = Student('어세걸', 3)..introduce();
  print("\n--- Using null-aware cascade operator (?..) ---");

  Student? student3;
  student3 = Student('어세걸', 1);
  student3?.introduce();
}