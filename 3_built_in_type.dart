void main(List<String> args) {
  // NUMBER
  print("===== NUMBER ====");
  int x = 1; // define variable with int data type
  print(x); // 1

  num a = 1; // can both int and double value
  a += 2.5;
  print(a); // 3.5

  double phi = 3.14;
  print(phi);

  // return string -> int
  var one = int.parse('1');
  print(one == 1);

  // return string -> double
  var twoPointFive = double.parse('2.5');
  print(twoPointFive == 2.5);

  // return string -> int
  var oneAsString = 1.toString();
  print(oneAsString == '1');

  // return string -> double
  var twoPointFiveAsString = twoPointFive.toString();
  print(twoPointFiveAsString == '2.5');

  var phiAsString = 3.14159.toStringAsFixed(2);
  print(phiAsString == '3.14');

  print("=================\n");

  // STRING
  print("===== STRING ====");
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  // assign value of an expression inside a string
  var name = "Jhon";
  var helloJhon = "Hello ${name} nice to meet you";
  print(helloJhon);

  // concate string
  var status = "message " + "send " + "successfully";
  print(status);

  // multiline string
  var multiLineString = """
  Lorem Ipsum is simply dummy text of the printing and 
typesetting industry. Lorem Ipsum has been the industry's 
standard dummy text ever since the 1500s, when an unknown 
printer took a galley of type and scrambled it to make a type 
specimen book.
""";
  print(multiLineString);

  // raw string
  var rawString =
      r'Lorem Ipsum is simply dummy text of the printing and \n typesetting industry.';
  print(rawString);

  print("=================\n");

  // BOOLEAN
  print("===== BOOLEAN ====");
  // check empty string
  var fullName = '';
  print(fullName.isEmpty);

  // chek hasPoint is greather than equal zero
  var hitPoint = 0;
  print(hitPoint <= 0);

  // check is null
  var unicorn;
  print(unicorn == null);

  // check is nan
  var iMeantToDoThis = 0 / 0;
  print(iMeantToDoThis.isNaN);

  print("=================\n");

  // LIST
  print("===== LIST ====");
  var list1 = [1, 2, 3];
  print(list1);
  print(list1.length);
  print(list1[1]);
  print(list1[1] == 2);
  print(list1.length == 3);

  list1[1] = 99;
  print(list1);

  list1.add(100);
  print(list1);

  list1.remove(99);
  print(list1);

  var list2 = [
    'Apple',
    'Bannana',
    'Manggo',
  ];
  print(list2);
  print(list2[0]);

  const listConst = [1, 2, 3];
  print(listConst);

  // use spread operator (...) to insert multiple values into a collection.
  var list4 = [1, 2, 3];
  var list5 = [0, ...list4];
  print(list5);

  // use null-aware spread operator (...?) to insert multiple values into a collection.
  var list6 = null;
  var list7 = [0, ...?list6];
  print(list7);

  var list8 = [0, ...list4];
  print(list8);

  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print(listOfStrings);
  print(listOfStrings[1] == '#1');

  print("=================\n");

  print("===== SETS ====");

  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names = <String>{};
  names.add("Jhon");
  print(names);

  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  print(elements);

  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  print(constantSet);

  print("=================\n");

  print("===== MAP ====");

  var periodicTable = {
    'H': 'Hydrogen',
    'Li': 'Lithium',
    'Na': 'Natrium',
  };
  print(periodicTable);

  periodicTable['K'] = 'Kalium';
  print(periodicTable);

  print(periodicTable['Li']);

  var numbers = {
    1: 'one',
    2: 'two',
    3: 'three',
  };
  print(numbers);

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  print(nobleGases);

  print("=================\n");

  print("===== RUNES ====");

  Runes hi = Runes("hi");
  for (var c in hi) {
    var ch = new String.fromCharCode(c);
    print(ch);
  }

  print("=================\n");
}
