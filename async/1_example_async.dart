void exampleSynchronousProgramming() {
  print(1);
  print(2);
  print(3);
}

void exampleAsynchronousProgramming() {
  print(1);
  Future.delayed(Duration(seconds: 3), () => print(2));
  print(3);
}

void main(List<String> args) {
  print("-- Synchronous ---");
  exampleSynchronousProgramming();
  print("-- asynchronous ---");
  exampleAsynchronousProgramming();
}
