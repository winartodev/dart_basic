// Basic Enum
enum Gender { Male, Female, Other }

// Enhanced Enum
enum TechCompany {
  Tokopedia("Tokopedia"),
  Gojek("Go-Jek");

  final String text;
  const TechCompany(this.text);
}

class Person {
  String? firstName;
  String? lastName;
  Gender? gender;

  Person(this.firstName, this.lastName, this.gender);

  void Display() {
    print("First Name: $firstName");
    print("Last Name: $lastName");
    print("Gender: $gender");
  }
}

void main(List<String> args) {
  Person p1 = Person("John", "Doe", Gender.Male);
  p1.Display();

  print("-" * 20);

  Person p2 = Person("Menuka", "Sharma", Gender.Female);
  p2.Display();

  print("-" * 20);

  // print all enums
  for (Gender gener in Gender.values) {
    print(gener);
  }

  print("-" * 20);

  var gojek = TechCompany.Gojek;
  print(gojek.text);
}
