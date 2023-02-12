late String description;

void main(List<String> args) {
  // Default value 
  int? num1;
  print(num1 == null);

  int likeCounter = 0;
  bool like = true;
  if (like) {
    likeCounter += 1;
  } 

  print(likeCounter);

  // Late vars
  description = "This Is Orage Juice";
  print(description);

  // Final 
  final name = "Jhon";
  final String nickName = "J";
  print(name);
  print(nickName);

  // Const
  const bar = 10000000;
  const double atm = 1.01325 * bar;
  print(atm);

  var foo = const[];
  foo = [1,2,3];
  print(foo);

  final bar2 = const[1,2,3];
  print(bar2);

  const Object i = 3;
  const list  = [i as int];
  const map = {if (i is int) i : 'int'};
  const set = {if (list is List<int>) ...list};

  print(i);
  print(list);
  print(map);
  print(set);
}