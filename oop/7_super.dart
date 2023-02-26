// Basic of super
class Laptop {
  String name = "Base Laptop";
  void Show() {
    print("Show from laptop class");
  }
}

class MacBook extends Laptop {
  String name = "MacBook";
  void Show() {
    super.Show();
    print("Show from macbook class");

    // Access super properties
    print("Show name from super class ${super.name}");
    print("show name from child class ${name}");
  }
}

// Super with multilevel
class MacBookPro extends MacBook {
  void Show() {
    super.Show();
    print("Show from MacbookPro Class");
  }
}

// Super With Constructor
class Employee {
  Employee({String? name, double? sallary}) {
    print("Employee Name: ${name}");
    print("Employee Sallary ${sallary}");
  }

  // Super With Named Constructor
  Employee.Manager(String name) {
    print("Employe mananger name is $name");
  }
}

class Manager extends Employee {
  Manager({String? name, double? sallary})
      : super(name: name, sallary: sallary) {}

  Manager.Manager(String name) : super.Manager(name) {}
}

void main(List<String> args) {
  MacBook macBook = MacBook();
  macBook.Show();

  print("-" * 20);

  Manager(name: "Jhon", sallary: 200000);

  print("-" * 20);

  Manager.Manager("Boedi");

  print("-" * 20);

  MacBookPro().Show();
}
