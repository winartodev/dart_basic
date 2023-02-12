void main(List<String> args) {
  print("=========== IF STATEMENT ===========");

  // IF Statement
  int number = 6;
  // True if the remainder is 0
  if (number % 2 == 0) {
    print("${number} is an even integer.");
  } else {
    print("${number} is an odd integer.");
  }

  int number1 = 1;
  int number2 = 2;
  if (number1 == number2) {
    print("Result: ${number1} = ${number2}");
  } else if (number1 > number2) {
    print("Result: ${number1} > ${number2}");
  } else {
    print("Result: ${number1} < ${number2}");
  }

  print("=========== FOR LOOP ===========");
  // For Loop
  var guestName = [
    "Budi",
    "Anto",
    "Jono",
  ];
  for (var i = 0; i < guestName.length; i++) {
    print(guestName[i]);
  }

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3

  print("=========== WHILE LOOP ===========");
  // WHile  
  int i = 0;
  while (i < 10) {
    print(i);
    i++;
  }

  // do while
  print("=========== DO WHILE ===========");
  i = 0;
  do {
    print(i);
    i++;
  } while (i < 10);

  print("=========== BREAK CONTINUE ===========");
  // break continue
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    } else if (i == 7) {
      break;
    } else {
      print(i);
    }
  }

  print("=========== SWITCH CASE ===========");
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print("Door Closed");
      break;
    case 'OPEN':
      print("Door Open");
      break;
    default:
      print("Unknwn Command");
  }
}
