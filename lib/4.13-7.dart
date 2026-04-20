class Member {
  String name;

  Member(this.name) {
    print("会员对象已创建");
  }
  void displayInfo() {
    print("会员姓名: $name");
  }
}
void main() {
  Member member1 = Member("여세걸");
  print("创建的对象姓名为: ${member1.name}");

}