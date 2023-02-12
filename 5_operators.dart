class Paint {
  String? Color;
  String? StrokeCap;
}

class PhoneNumber {
  String? number;
  String? label;

  String build() {
    return 'Number:$number,label:$label';
  }
}

class AddressBookBuilder {
  String? name;
  String? email;
  String? phone;

  String build() {
    return 'Name\t: $name\nEmail\t: $email\nPhone\t: {$phone}';
  }
}

void main(List<String> args) {
  // Aritmethic Operators
  print(2 + 3 == 5);
  print(2 - 3 == -1);
  print(2 * 3 == 6);
  print(5 / 2 == 2.5); // Result is a double
  print(5 ~/ 2 == 2); // Result is an int
  print(5 % 2 == 1); // Remainder

  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  print(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  print(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  print(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  print(a != b); // -1 != 0

  // Equeality and relational Operators
  print(2 == 2);
  print(2 != 3);
  print(3 > 2);
  print(2 < 3);
  print(3 >= 3);
  print(2 <= 3);

  // Type test operators
  var jhon = "Jhon";
  var employeeName = 1;

  if ((employeeName is String)) {
    print("Hello ${employeeName}");
  }

  if (employeeName is! String) {
    print("employee name is't string");
  }

  print((jhon as String).toString());

  // Assignment operators
  var num1 = 2;
  num1 *= 3;
  print(num1 == 6);

  num1 = 2;
  num1 += 3;
  print(num1 == 5);

  num1 = 2;
  num1 -= 3;
  print(num1 == -1);

  // Logical Operators
  var done = false;
  var col = 3;
  if (!done && (col == 0 || col == 3)) {
    print("Hello");
  }

  // Bitwise and Shift Operators
  final value = 0x22;
  final bitmask = 0x0f;

  print((value & bitmask) == 0x02); // AND
  print((value & ~bitmask) == 0x20); // AND NOT
  print((value | bitmask) == 0x2f); // OR
  print((value ^ bitmask) == 0x2d); // XOR
  print((value << 4) == 0x220); // Shift left
  print((value >> 4) == 0x02); // Shift right
  print((value >>> 4) == 0x02); // Unsigned shift right
  print((-value >> 4) == -0x03); // Shift right
  print((-value >>> 4) > 0); // Unsigned shift right

  // Conditional Expressions
  var isPublic = true;
  var visibility = isPublic ? 'public' : 'private';
  print(visibility);

  String playerName(String? name) => name ?? 'Guest';
  print(playerName("Narto"));
  print(playerName(null));

  // Casecase notations
  var paint = Paint()
    ..Color = "Red"
    ..StrokeCap = "Round";
  print(paint.Color);
  print(paint.StrokeCap);

  var paint2 = Paint();
  paint2.Color = "Black";
  paint2.StrokeCap = "Circle";
  print(paint2.Color);
  print(paint2.StrokeCap);

  var addressBook = (AddressBookBuilder()
        ..name = 'Jenny'
        ..email = 'jenny@example.com'
        ..phone = (PhoneNumber()
              ..number = '415-555-0100'
              ..label = 'home')
            .build())
      .build();
  print(addressBook);
}
