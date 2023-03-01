import 'dart:io';

void ReadFile() {
  File file = File('./example/text.txt');

  String content = file.readAsStringSync();

  print(content);
}

void GetFileInformation() {
  File file = File('./example/text.txt');

  print("File path: ${file.path}");
  print("File absolute path: ${file.absolute.path}");
  print("File size: ${file.lengthSync()} bytes");
  print("Last modified: ${file.lastModifiedSync()}");
}

void ReadCSVFile() {
  File file = File('./example/data.csv');

  String contents = file.readAsStringSync();
  List<String> lines = contents.split('\n');
  for (var line in lines) {
    print(line);
  }
}

void ReadOnlyPartOfFile() {
  File file = new File('./example/text.txt');
  String contents = file.readAsStringSync().substring(15, 23);
  print(contents);
}

void main(List<String> args) {
  print("--- READ FROM FILE ---");
  ReadFile();

  print("--- GETING FILE INFORMATION ---");
  GetFileInformation();

  print("--- READ CSV FILE ---");
  ReadCSVFile();

  print("--- READ ONLY PART OF FILE ---");
  ReadOnlyPartOfFile();
}
