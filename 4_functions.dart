const _nobleGases = {
  2: "helium",
  10: "neon",
  18: "argon",
};

// basic function
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

// shorthand function
bool isNobleV2(int atomicNumber) => _nobleGases[atomicNumber] != null;

String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

String sayV2(String from, String msg, [String? device = "Carrier Pigeon"]) {
  var result = '$from says $msg with a $device';
  return result;
}

void printElement(int element) {
  print(element);
}

void main(List<String> args) {
  print(isNoble(1));
  print(isNoble(2));

  print(isNobleV2(1));
  print(isNobleV2(2));

  print(say("Jhon", "Hello Winarto"));
  print(say("Jhon", "Hello Winarto", "Carrier Pigeon"));

  print(sayV2("Jhon V2", "Yoo"));

  // Function as first class
  // assign a function to variable
  var loudify = (msg) => '${msg.toUpperCase()}';
  print(loudify("hello"));

  var numbers = [1, 2, 3];
  numbers.forEach(printElement);

  // Annonymus Function
  const list = ['apples', 'bananas', 'oranges'];
  list.map((item) {
    return item.toUpperCase();
  }).forEach((item) {
    print('$item: ${item.length}');
  });

  // Anonymus Function with shorthand technique
  list
    .map((item) => item.toUpperCase())
    .forEach((item) => print('$item: ${item.length}'));
}
