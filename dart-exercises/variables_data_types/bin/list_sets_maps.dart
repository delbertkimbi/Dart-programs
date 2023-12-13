void main() {
  /// Sets( Contains unique elements unrepeated.)
  /// umlike list which can't identify repeated elements
  final set1 = {1, 2, 3, 4, 5, 6};
  for (int i = 1; i < 10; i++) {
    set1.add(i);
  }
  final set2 = {...set1};
  print(set2.hashCode);

  final map1 = {
    1: "Hi there",
    2: "Ok there",
  };
  map1[1] = "No";
  for (int i = 0; i < 3; i++) {
    map1.containsKey(i) ?  print(map1[i]): print("map[$i] does not exist");
  }
}
