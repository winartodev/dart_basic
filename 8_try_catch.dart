void displayName(str) {
  if (str.length > 0) {
    print(str);
  } else {
    throw new Exception('Name is empty.');
  }
}

void main(List<String> args) {
  var name = 'www';
  try {
    displayName(name);
  } catch (e) {
    print(e);
  } finally {
    print("Finally block executed");
  }
  print('Bye');
}
