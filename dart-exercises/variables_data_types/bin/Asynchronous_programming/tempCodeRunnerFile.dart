import "dart:async";
// Part 1
//Write a function addHello() that takes a single String argument.
//addHello() returns its String argument preceded by 'Hello '.
//Example: addHello('Jon') returns 'Hello Jon'.
addHello(String user) => "Hello $user";


// Part 2
//Write a function greetUser() that takes no arguments.
//To get the username, greetUser() calls the provided asynchronous function fetchUsername().
//greetUser() creates a greeting for the user by calling addHello(), passing it the username, and returning the result.
//Example: If fetchUsername() returns 'Jenny', then greetUser() returns 'Hello Jenny'.
Future<String> fetchUsername() async{
  var username=await Future.delayed(
    const Duration(seconds:2),
    ()=>"Delbert"
  );
  
  return username;
}
Future<String> greetUser() async{
  try{
    var name= await fetchUsername();
    return addHello(name);
  }
  catch(e){
    return "Eror: $e";
  }
}

// Part 3
// Write a function sayGoodbye() that does the following:
// Takes no arguments.
// Catches any errors.
// Calls the provided asynchronous function logoutUser(Returns the name associated with the current user.).
// If logoutUser() fails, sayGoodbye() returns any string you like.
// If logoutUser() succeeds, sayGoodbye() returns the string '<result> Thanks, see you next time', where <result> is the string value returned by calling logoutUser().
Future<String> logoutUser(){
  return Future.delayed(
  const Duration(seconds:2),
   ()=> "Delbert",
  );
}
Future<String> sayGoodbye() async{
  try{
    var info=await logoutUser();
    return "$info Thanks, see you next time";
  }
  catch(err){
    return "An error: $err occured";
  }
}
Future<void> main()async{
  List funcs=await [
    greetUser(),
    sayGoodbye(),
  ];
  print( funcs);
}