import 'dart:mirrors';

class Car {
  String? color;
  int? year;

  void Start() {
    print("Car Started");
  }
}

class Toyota extends Car {
  String? name;
  int? prize;

  void ShowDetails() {
    print("Model $name");
    print("Prize $prize");
  }
}

// multilevel inheritance
class Sedan extends Toyota {
  int? seat;

  void Display() {
    super.ShowDetails();
    print("Seat $seat");
  }
}

// Hierarchical Inheritance
class Shape {
  double? x;
  double? y;
}

class Rectangle extends Shape {
  double area() {
    return x! * y!;
  }
}

class Triangle extends Shape {
  double area() {
    return 0.5 * x! * y!;
  }
}

void main(List<String> args) {
  var toyota = Toyota();
  toyota.color = "Red";
  toyota.year = 2020;
  toyota.name = "Camry";
  toyota.prize = 20000;
  toyota.Start();
  toyota.ShowDetails();

  print("-" * 20);

  var toyotaSedan = Sedan();
  toyotaSedan.color = "Black";
  toyotaSedan.year = 2022;
  toyotaSedan.name = "FT86";
  toyotaSedan.prize = 50000000;
  toyotaSedan.seat = 4;
  toyotaSedan.Display();

  print("-" * 20);

  Rectangle r = new Rectangle();
  r.x = 10.0;
  r.y = 20.0;
  print("Area of the rectangle: ${r.area()}");

  print("-" * 20);

  Triangle t = new Triangle();
  t.x = 10.0;
  t.y = 20.0;
  print("Area of the triangle: ${t.area()}");
}
