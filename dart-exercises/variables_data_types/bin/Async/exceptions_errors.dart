void main() {
  tryCreatingPerson(age: 5);
  tryCreatingPerson(age: -2);
  tryCreatingPerson(age: 20);
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
}

class Person {
  late int age;
  Person({required this.age}) {
    if (age < 0) {
      throw Exception("Youa are young");
    } else if (age > 15) {
      throw Exception("Youa are Older");
    }
  }
}
