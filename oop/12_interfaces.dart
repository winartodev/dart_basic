abstract class Human {
  Walk(int speed);
  String Talk();
  Listen(String voice);
}

class Budi implements Human {
  @override
  void Walk(int speed) {
    print("budi can walk with speed $speed km/h");
  }

  @override
  String Talk() {
    return "Hi my name is budi";
  }

  @override
  void Listen(String voice) {
    print("budi listen $voice");
  }
}

// Multiple interfaces

abstract class Area {
  void area();
}

abstract class Perimeter {
  void perimeter();
}

// implements multiple interfaces
class Rectangle implements Area, Perimeter {
  int length, breadth;

  Rectangle(this.length, this.breadth);

  @override
  void area() {
    print('The area of the rectangle is ${length * breadth}');
  }

  @override
  void perimeter() {
    print('The perimeter of the rectangle is ${2 * (length + breadth)}');
  }
}

void main(List<String> args) {
  Budi budi = Budi();
  print(budi.Talk());
  budi.Walk(2);
  budi.Listen("Song");

  print("-" * 20);

  Rectangle rectangle = Rectangle(10, 20);
  rectangle.area();
  rectangle.perimeter();
}
