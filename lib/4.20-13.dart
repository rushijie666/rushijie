mixin Run {
  void run() {
    print("快速奔跑。");
  }
}
mixin Jump {
  void jump() {
    print("高高跳起。");
  }
}
class Character {
  String name;

  Character(this.name);
}
class Hero extends Character with Run, Jump {
  Hero(String name) : super(name);

  void introduce() {
    print("角色名：$name");
    run();
    jump();
  }
}
void main() {
  Hero hero = Hero("战士");
  hero.introduce();
}