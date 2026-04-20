abstract class Worker {

  void work();
}
class Developer implements Worker {
  @override
  void work() {
    print("开发人员正在开发程序。");
  }
}
class Designer implements Worker {
  @override
  void work() {
    print("设计师正在设计界面。");
  }
}
void main() {
  Worker dev = Developer();
  Worker des = Designer();

  dev.work();
  des.work();
}