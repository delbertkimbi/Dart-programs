void main() {
  // Object
  final bag1 = Bags(name: "Dels", price: 20000, size: 30);
  bag1.func();
}

// class
class Bags {
  // Fields
  final String name;
  final int price;
  final int size;

  /// Constructors andd properties
  Bags({required this.name, required this.price, required this.size});

  /// Method
  void func() {
    print("The size of $name is $size and it cost $price");
  }
}

class Student extends Bags {
  Student({required super.name, required super.price, required super.size});

  @override
  void func() {
    print("Hello World");
  }
}
