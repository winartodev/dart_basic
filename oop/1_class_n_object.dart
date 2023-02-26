// Declaring class
class Animal {
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void display() {
    print("Animal name: ${name}");
    print("Number Of Legs: ${numberOfLegs}");
    print("Life Span: ${lifeSpan}");
  }
}

class Person {
  String? name;
  String? phone;
  bool? isMarried;
  int? age;

  void displayInfo() {
    print("Person name: $name.");
    print("Phone number: $phone.");
    print("Married: $isMarried.");
    print("Age: $age.");
  }
}

class Area {
  double length = 0;
  double breadth = 0;

  double? calculateArea() {
    return length + breadth;
  }
}

class Book {
  String? name;
  String? author;
  int? prize;

  void display() {
    print("Book name : ${name}");
    print("Author : ${author}");
    print("Prize: Rp.${prize}");
  }
}

void main(List<String> args) {
  var animal = Animal();
  animal.name = "Jhon";
  animal.numberOfLegs = 4;
  animal.lifeSpan = 10;
  animal.display();

  print("-" * 20);

  var person = Person();
  person.name = "Henry";
  person.phone = "12345";
  person.isMarried = false;
  person.age = 1;
  person.displayInfo();

  print("-" * 20);

  var area = Area();
  area.length = 1;
  area.breadth = 3;
  print("Calculate Area ${area.calculateArea()}" );

  print("-" * 20);

  var book = Book();
  book.name = "Harry Potter";
  book.author = "J. K. Rowling";
  book.prize = 130000;
  book.display();
}
