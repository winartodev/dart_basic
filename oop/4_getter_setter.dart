class Vechicle {
  String _name = "";
  int _year = 0;

  String get name => this._name;

  set name(String name) => _name = name;

  int get year => this._year;

  set year(int year) => _year = year;
}

class Student {
  String? _firstName;
  String? _lastName;
  int? _age;

  String get FullName => this._firstName! + " " + this._lastName!;

  int get age => this._age!;

  set firstName(String firstName) => this._firstName = firstName;

  set lastName(String lastName) => this._lastName = lastName;

  set age(int age) {
    if (age < 0) {
      throw new Exception("Age can't be less than 0");
    } else {
      this._age = age;
    }
  }
}

class BankAccount {
  double _balance = 0.0;

  double get balance => this._balance;

  void Deposit(double amount) {
    this._balance += amount;
  }

  void WithDraw(double amount) {
    if (this._balance >= amount) {
      this._balance -= amount;
    }
  }
}

void main(List<String> args) {
  Vechicle vechicle1 = Vechicle();
  vechicle1.name = "Daihatsu";
  vechicle1.year = 2003;
  print(vechicle1.name);
  print(vechicle1.year);

  print("-" * 20);

  Student student1 = Student();
  student1.firstName = "Winarto";
  student1.lastName = "Zing";
  student1.age = 21;

  print("Full Name ${student1.FullName}");
  print("Age ${student1.age}");

  print("-" * 20);

  var bankAccount = BankAccount();
  bankAccount.Deposit(1000000);
  print("Get Balance ${bankAccount.balance}");
  bankAccount.WithDraw(200000);
  print("Get Balance ${bankAccount.balance}");
}
