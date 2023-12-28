void main() {
  test();
}

Future<int> futureMultiples(int a) {
  return Future.delayed(
    Duration(seconds: 3),
    () {
      return 2 * a;
    },
  );
}

void test() async {
  int r = await futureMultiples(4);
  print("\nThe future results is $r");
}
