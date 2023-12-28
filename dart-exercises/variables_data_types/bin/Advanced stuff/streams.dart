void main() {
  test();
}

Stream<String> periodicStream() {
  return Stream.periodic(
    Duration(seconds: 1),
    (value) {
      return "Delbert is wealthy";
    },
  );
}

void test() async {
  await for (final value in periodicStream()) {
    print(value);
  }
}
