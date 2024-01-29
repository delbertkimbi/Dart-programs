import "dart:async";
//Use async and await to implement an asynchronous changeUsername() function that does the following:
  //Calls the provided asynchronous function fetchNewUsername() and returns its result.
      //Example return value from changeUsername(): "jane_smith_92"
  //Catches any error that occurs and returns the string value of the error.
  //You can use the toString() method to stringify both Exceptions and Errors.
Future<String> fetchNewUserName()async{
  var username=await newUserName();
  return username;
}
Future<String> newUserName(){
  var name=Future.delayed(
    const Duration(seconds:3),
    ()=> "delbert_Kimbi_19",
  );
  return name;
}
// Implement changeUsername here
//Returns the new username that you can use to replace an old one.
Future<String> changeUsername() async{
 try{
  var change=await fetchNewUserName();
   return change;
 }
  catch(e){
     return "The error:${e.toString()}";
  }
}
void main()async{
  print("Waiting for some responds...");
  print(await changeUsername());
}