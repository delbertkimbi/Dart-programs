import 'dart:io';
/// Dart program that takes a List of numbers, and determines which of them is prime,stores in another list and prints them.
List getList(List<int> list) {
  for (var i = 0; i < 3; i++) {
    list[i] = int.parse(stdin.readLineSync()!);
  } 
  return list;
}

void checkPrime(List<int> list) {
  int f = 1;
  List<int> A = [];
  for (var i in list) {
    for (int j = 2; j < i / 2; j++) {
      if (i % 2 == 0) {
        f = 0;
        break;
      }
    }
    f != 0 ? A.add(i) : null;
  }
  for (int i = 0; i < A.length; i++) {
    if (A[i] != 0) {
      print('${A[i]} \t');
    }
  }
}

void main() {
  // ignore: non_constant_identifier_names
  List<int> A1 = [];
  getList(A1);
  print("object");
  checkPrime(A1);
}
