import 'dart:io';

void WriteFile() {
  File file = File('./example/test_write.txt');
  file.writeAsStringSync('Hello World');
  print('File written');
}

void WriteNewContent() {
  File file = File('./example/test_write.txt');
  file.writeAsStringSync("\nThis New Content", mode: FileMode.append);
  print("Write Content");
}

void WriteCSVFile() {
  File file = File("./example/students.csv");
  file.writeAsStringSync('Name,Phone\n');
  for (int i = 0; i < 3; i++) {
    stdout.write("Enter name of student ${i + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter phone of student ${i + 1}: ");
    String? phone = stdin.readLineSync();
    file.writeAsStringSync('$name,$phone\n', mode: FileMode.append);
  }
}

void ReadFile() {
  File file = File('./example/test_write.txt');
  print(file.readAsStringSync());
}

void ReadCSVFile() {
  File file = File('./example/students.csv');
  String contents = file.readAsStringSync();

  List<String> lines = contents.split('\n');
  for (var line in lines) {
    print(line);
  }
}

void main(List<String> args) {
  print("--- WRITE FILE ---");
  WriteFile();

  print("--- WRITE NEW CONTENT FROM PREVIOUS FILE ---");
  WriteNewContent();
  print("Result: ");
  ReadFile();

  print("--- WRITE NEW CSV FILE ---");
  WriteCSVFile();
  print("Result: ");
  ReadCSVFile();
}
