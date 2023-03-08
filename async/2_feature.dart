Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => "Winarto");
}

void getData() async {
  var data = await middleFunction();
  print(data);
}

Future<String> middleFunction() {
  return Future.delayed(Duration(seconds: 5), () => "Hello");
}

void main(List<String> args) {
  // print("Hello");
  // getName().then((value) => print(value));
  // print("end");

  print("getting data");
  getData();
  print("end");
}
