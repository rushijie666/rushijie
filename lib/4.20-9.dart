
class Employee {

  String name;

  Employee(this.name);

  Employee.newEmployee() : this("未定");

  @override
  String toString() {
    return "员工姓名：$name";
  }
}

void main() {

  Employee employee1 = Employee("张三");
  print("使用默认构造函数创建的对象：$employee1");

  Employee employee2 = Employee.newEmployee();
  print("使用重定向构造函数创建的对象：$employee2");
}