class Employee {
  String name;
  double basePay; // 基本工资

  Employee(this.name, this.basePay);

  double calculatePay() {
    return basePay;
  }
}

class SalesEmployee extends Employee {
  double bonus; // 奖金

  SalesEmployee(super.name, super.basePay, this.bonus);

  @override
  double calculatePay() {
    return basePay + bonus;
  }
}

void printSalary(Employee emp) {
  print("${emp.name}的工资：${emp.calculatePay().toInt()}");
}

void main() {
  Employee emp = Employee("洪吉童", 250);
  SalesEmployee salesEmp = SalesEmployee("金营业", 200, 120);
  printSalary(emp);
  printSalary(salesEmp);
}