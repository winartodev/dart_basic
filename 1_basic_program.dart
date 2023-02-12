/// PutYourName will return your actual 
/// name from input name parameter 
String PutYourName(String name) {
  return "Hello " + name;
}

void main(List<String> args) {
  var name = "Jhon"; // declare initializing vars
  print(PutYourName(name)); // call a function
}