class Employee {
  // private property 
  var _name;
  var _age;

  String GetName() {
    return _name;
  }

  void SetName(String name) {
    this._name = name;
  }

  int GetAge() {
    return _age;
  }

  void SetAge(int age) {
    this._age = age;
  }
}

class Student {
  // read only property
  final _schoolName = "ABCD";

  String GetSchoolName() {
    return _schoolName;
  }
}

void main(List<String> args) {
  Employee employee1 = Employee();
  employee1.SetName("Winarto");
  employee1.SetAge(21);

  print("Get Employee Name ${employee1.GetName()}");
  print("Get Employee Age ${employee1.GetAge()}");

  print("-" * 20);

  Student student1 = Student();
  print(student1.GetSchoolName());
}