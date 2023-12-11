import 'dart:io';

void main() {
  /// Objects (Instance of a class and can acccess of class properties including methods)
  var std1 = Students();

  print("Enter your name: ");
  std1.name = stdin.readLineSync()!;
  print("Enter your level: ");
  std1.level = int.parse(stdin.readLineSync()!);
  print("ENter your department: ");
  std1.department = stdin.readLineSync()!;
  std1.func();
}

// Classes  (A blue print from which objects are created)
class Students {

  ///Fields
  late String name;             //late used to declare variables that will be initialised later
  late int level;
  late String department;
 
 /// Methods
  void func() {
    print(
        "\n My name is $name, i am in level \n $level in the department of $department ");
  }
}





 


 
 



 
 