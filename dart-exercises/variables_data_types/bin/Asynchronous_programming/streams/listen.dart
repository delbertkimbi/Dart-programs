import 'dart:async';

void main() async {
  //printing the first value
  print(await countDown().first);
  print('\n');
  countDown().listen(
    // onData (positional argument)
    ///Does something with an event of a stream
    (event) {
      print(event);
    },

    //onError (named argument)
    ///Handle the errors that may arise here

    //onHandle (named argument)
    ///Checks when and event is completed,, and does something
    onDone: () {
      print("Completed!!!");
    },
  );
  countUp();
  // countUp().listen(
  //   (event) {
  //     print(event);
  //   },
  //   onError: (err) {
  //     print("object error: $err");
  //   },
  //   onDone: () {
  //     print("done");
  //   },
  // );
}

Stream<int> countDown() async* {
  for (int i = 5; i > 0; i--) {
    // We yield with streams due to the async* not return
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

void countUp() {
  final controller = StreamController();
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      // Using a stream controller to add even numbers to the stream...
      controller.sink.add(i);
    }
  }
  controller.sink.done;
  controller.stream.listen(
    (event) {
      print(event);
    },
  );
  // return Stream.periodic(
  //   Duration(seconds: 1),
  //   (value) {
  //     return value;
  //   },

  // );
}
