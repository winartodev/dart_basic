class Animal {
  void Eat() {
    print("animal eat");
  }
}

class Dog extends Animal {
  @override
  void Eat() {
    print("dog eat");
  }
}

class Cat extends Animal {
  @override
  void Eat() {
    print("cat eat");
  }
}

void main(List<String> args) {
  Animal animal = Animal();
  animal.Eat();

  print("-" * 20);

  Dog dog = Dog();
  dog.Eat();

  print("-" * 20);

  Cat cat = Cat();
  cat.Eat();
}
