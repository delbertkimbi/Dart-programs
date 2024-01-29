
//Use async and await to implement an asynchronous changeUsername() function that does the following:
  //Calls the provided asynchronous function fetchNewUsername() and returns its result.
      //Example return value from changeUsername(): "jane_smith_92"
  //Catches any error that occurs and returns the string value of the error.
  //You can use the toString() method to stringify both Exceptions and Errors.
Future<String> fetchNewUserName()async{
  var username=await NewUserName();
  return username;
}
Future<String> NewUserName(){
  String name=Future.delayed(
    const Duration(seconds:3),
    ()=> "delbert_Kimbi_19",
  );
}
// Implement changeUsername here
//Returns the new username that you can use to replace an old one.
Future<String> changeUsername() async{
 try{
  var change=await fetchNewUserName();
   return change;
 }
  catch(e){
     print("The error:${e.toString()}");
  }
}
