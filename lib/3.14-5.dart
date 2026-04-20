class BankAccount {
  String owner;
  double _balance;
  BankAccount(this.owner, double initialBalance) : _balance = initialBalance;

  double get balance {
    return _balance;
  }
  set balance(double newBalance) {
    if (newBalance >= 0) {
      _balance = newBalance;
    } else {
      print("Invalid balance: Balance cannot be negative.");
    }
  }
  void deposit(double money) {
    if (money > 0) {
      _balance += money;
      print("Deposited: $money. New balance: $_balance");
    } else {
      print("Deposit amount must be positive.");
    }
  }
  void withdraw(double money) {
    if (money <= 0) {
      print("Withdrawal amount must be positive.");
      return;
    }
    if (_balance >= money) {
      _balance -= money;
      print("Withdrew: $money. New balance: $_balance");
    } else {
      print("Insufficient balance. Current balance: $_balance");
    }
  }
}
void main() {
  BankAccount account = BankAccount("Initial Owner", 0.0);
  print("Account created.");
  account.owner = "여세걸";
  print("Account owner set to: ${account.owner}");
  account.balance = 10000.0;
  print("Initial balance set to: ${account.balance}");
  account.deposit(3000.0);
  account.withdraw(5000.0);
  account.withdraw(10000.0);
}