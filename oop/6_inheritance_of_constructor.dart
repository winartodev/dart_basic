// Inheritance Of Constructor
class Person {
  String? name;
  int? age;

  var x = 1.2;

  Person(String name, int age);
}

class Student extends Person {
  int? rollNumber;

  Student(String name, int age, int rollNumber) : super(name, age);
}

// Inheritance Of Constructor  With Named Parameters
class Laptop {
  Laptop({String? name, String? color}) {
    print("Laptop Constructor");
    print("Name: $name");
    print("Color: $color");
  }

  // Calling Named Constructor Of Parent Class In Dart
  Laptop.named(String name) {
    print("Laptop Named Constructor");
    print("Name $name");
  }
}

class MacBook extends Laptop {
  MacBook({String? name, String? color}) : super(name: name, color: color) {
    print("MacBook Constructor");
  }
}

class Asus extends Laptop {
  Asus(String name, int Prize) : super.named(name) {
    print("Asus Constructor");
    print("Name $name");
    print("Prize $Prize");
  }
}

void main(List<String> args) {
  var student1 = Student("Winarto", 21, 1);
  print("Name : ${student1.name}");
  print("Age : ${student1.age}");
  print("Roll Number : ${student1.rollNumber}");

  print("-" * 20);

  MacBook(name: "MacBook Pro", color: "Space Grey");

  print("-" * 20);

  Asus("X505ZA", 8000000);
}
