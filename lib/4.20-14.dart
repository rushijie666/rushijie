class LibraryUser {
  String name;
  int _borrowCount;
  LibraryUser({
    required this.name,
    required int borrowCount,
  }) : _borrowCount = borrowCount;
  int get borrowCount => _borrowCount;

  set borrowCount(int value) {
    _borrowCount = value;
  }
  void showInfo() {
    print("会员:$name，当前借阅:$_borrowCount 本");
  }
}
bool canBorrow(LibraryUser user, [int maxBooks = 3]) {
  return user.borrowCount < maxBooks;
}
void main() {
  LibraryUser kim = LibraryUser(name: "金学生", borrowCount: 2);
  LibraryUser lee = LibraryUser(name: "李学生", borrowCount: 3);

  print("${kim.name}：${canBorrow(kim) ? "可以借阅" : "无法借阅"}");
  print("${lee.name}：${canBorrow(lee) ? "可以借阅" : "无法借阅"}");
}