import 'dart:io';

/// enums(A set of known finite values of a variable) of days of the week
enum DaysOfTheWeek {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

void main() {
  /// Getting the user input for a day of the week (with the help of dart:io)
  print("Enter a day of the week: ");
  String day = stdin.readLineSync()!; // reads a non nullable string

  /// Getting the number which represents the day of the week
  int dayNum;
  print("Enter a number that represents the day");
  dayNum = int.parse(stdin.readLineSync()!);             //reads non nullable number


  //Checking if dayNum is between 1 and 7
  assert(dayNum >= 1 && dayNum <= 7);

  ///for-in repeatition control structure of enums
  for (var i in DaysOfTheWeek.values) {
    i.name.toLowerCase() == day.toLowerCase()
        ? print(i.name[0] + " the first letter of ${i.name}")
        : null;
  }

  ///forEach repeatition control structure of enums
  DaysOfTheWeek.values.forEach((i) {
    i.name.toUpperCase() ==
            day.toUpperCase() // Preventing differences due to cases
        ? print("${i.name.toUpperCase()} is the ${dayNum} day of the week.")
        : null;

    // checking to make sure the index equalls the dayNum-1 to prevent printing all cases
    if (i.index == (dayNum - 1)) {
      switch (i.index) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
          print(
              "${i.name} is a school day. So make sure to go to school so as to learn something profitable");
          break;
        case 5:
          print(
              "${i.name} is your sports day and chilling day. Make sure to have fun!!!");
          break;
        case 6:
          print(
              "${i.name} is a sabath day, so make sure you keep it holy by going to church");
          break;
        default:
          print("Something is wrong some where.");
      }
    }
  });
}
