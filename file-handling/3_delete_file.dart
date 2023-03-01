import 'dart:io';
void Delete(File file) {
  file.deleteSync();
  print("File Deleted");
}

void DeleteIfExist(File file) {
  if (file.existsSync()) {
    Delete(file);
  } else {
    print("File doesn't exists");
  }
}

void main(List<String> args) {
  File file = File("./example/test_delete.txt");
  file.writeAsStringSync("Hello");
  print("File Written");

  DeleteIfExist(file);
  DeleteIfExist(file);
}