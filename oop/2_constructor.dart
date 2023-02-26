class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Basic Constructor
  Student(String name, int age, int rollNumber) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }

  void display() {
    print("Student name: ${name}");
    print("Ages: ${age}");
    print("Roll Number: ${rollNumber}");
  }
}

class Employee {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor With Optional Parameters
  Employee(this.name, this.age, [this.subject = "N/A", this.salary = 0]);

  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}

class Teacher {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor Single Line
  Teacher(this.name, this.age, this.subject, this.salary);

  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}

class Chair {
  String? name;
  String? color;

  // Constructor With Named Parameters
  Chair({this.name, this.color});

  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

class Table {
  String? name;
  String? color;

  // Constructor with default value
  Table({this.name = "Table1", this.color = "White"});

  // Method
  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

class Patient {
  String? name;
  int? age;
  String? disease;

  Patient({this.name, this.age, this.disease});

  void display() {
    print("Patient Name: ${this.name}");
    print("Patient Age: ${this.age}");
    print("Patient Disease: ${this.disease}");
  }
}

class Vechicle {
  String? name;
  String? color;
  int? wheels;

  // Constructor With Default Value
  Vechicle() {
    name = "Toyota";
    color = "Red";
    wheels = 4;
  }

  void Display() {
    print("Vechicle name ${this.name}");
    print("Vechicle color ${this.color}");
    print("Vechicle wheels ${this.name}");
  }
}

class Car {
  String? name;
  String? color;
  int? prize;

  Car({this.name = "Toyota", this.color = "Red", this.prize = 0});

  // Named Constructor
  Car.namedConstructor(String name, String color) {
    this.name = name;
    this.color = color;
  }

  void Display() {
    print("${this.name}");
    print("${this.color}");
    print("${this.prize}");
  }
}

class Customer {
  final String? name;
  final int? age;
  final String? phone;

  // Constant constructor 
  const Customer({this.name, this.age, this.phone});
}

void main(List<String> args) {
  Student andi = Student("Andi", 18, 10);
  andi.display();

  print("-" * 20);

  Student budi = Student("Budi", 10, 11);
  budi.display();

  print("-" * 20);

  Teacher teacher1 = Teacher("John", 30, "Maths", 50000.0);
  teacher1.display();

  print("-" * 20);

  Chair chair = Chair(name: "Chair1", color: "Red");
  chair.display();

  print("-" * 20);

  Employee employee = Employee("John", 30);
  employee.display();

  print("-" * 20);

  Employee employee2 = Employee("John2", 30, "Software Engineer", 10000000);
  employee2.display();

  print("-" * 20);

  Table table = Table();
  table.display();

  print("-" * 20);

  Table table2 = Table(name: "Table2", color: "Blue");
  table2.display();

  print("-" * 20);

  Patient Jhon = Patient(name: "Jhon", age: 10, disease: "Flu");
  Jhon.display();

  print("-" * 20);

  Vechicle vehicle1 = Vechicle();
  vehicle1.Display();

  print("-" * 20);

  Vechicle vehicle2 = Vechicle();
  vehicle2.name = "Daihatsu";
  vehicle2.color = "Blue";
  vehicle2.Display();

  print("-" * 20);

  Car car1 = Car.namedConstructor("Daihatsu", "Black");
  car1.Display();

  print("-" * 20);

  Car car2 = Car(color: "red", name: "mercedez benz", prize: 1000000);
  car2.color = "asdf";
  car2.Display();

  print("-" * 20);

  Customer customer1 = Customer(age: 21, name: "Winarto", phone: "0897671221");
  print("customer 1 Age ${customer1.age}");
  print("customer 1 Name ${customer1.name}");
  print("customer 1 Phone ${customer1.phone}");
}
