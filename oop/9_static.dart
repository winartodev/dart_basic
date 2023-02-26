class Employee {
  static int count = 0;
  Employee() {
    count++;
  }

  void TotalEmployee() {
    print("Total Employee is: $count");
  }
}

class SimpleInterest {
  static double calculateInterest(double principal, double rate, double time) {
    return (principal * rate * time) / 100;
  }
}

void main(List<String> args) {
  var e1 = Employee();
  e1.TotalEmployee();
  var e2 = Employee();
  e2.TotalEmployee();
  var e3 = Employee();
  e3.TotalEmployee();

  print("-" * 20);

  print("The simple interest is ${SimpleInterest.calculateInterest(1000, 2, 2)}");
}
