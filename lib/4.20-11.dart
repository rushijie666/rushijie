class User {
  String name;
  User(this.name) {
    print("User 构造函数执行");
  }
}
class PremiumUser extends User {
  int level;
  PremiumUser(String name, this.level) : super(name) {
    print("PremiumUser 构造函数执行");
  }
}
void main() {
  PremiumUser vip = PremiumUser("小明", 3);

  print("会员姓名：${vip.name}");
  print("会员等级：${vip.level}");
}