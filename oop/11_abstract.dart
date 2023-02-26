abstract class Vechicle {
  void Start();

  void Stop();
}

class Car extends Vechicle {
  @override
  void Start() {
    print("Car Started");
  }

  @override
  void Stop() {
    print("Car Stopped");
  }
}

class Bike extends Vechicle {
  @override
  void Start() {
    print("Bike Started");
  }

  @override
  void Stop() {
    print("Bike Stopped");
  }
}

abstract class Bank {
  String name;
  double rate;

  Bank(this.name, this.rate);

  void Interest();

  void Display() {
    print("Bank Name $name");
  }
}

class BCA extends Bank {
  BCA(String name, double rate) : super(name, rate) {}

  @override
  void Interest() {
    print('The rate of interest of $name is $rate');
  }
}

class Permata extends Bank {
  Permata(String name, double rate) : super(name, rate) {}

  @override
  void Interest() {
    print('The rate of interest of $name is $rate');
  }
}



void main(List<String> args) {
  Car car = Car();
  car.Start();
  car.Stop();

  print("-" * 20);

  Bike bike = Bike();
  bike.Start();
  bike.Stop();

  print("-" * 20);

  BCA bca = BCA("BCA", 8.7);
  bca.Display();
  bca.Interest();

  print("-" * 20);

  Permata permata = Permata("Permata", 7);
  permata.Display();
  permata.Interest();
}
