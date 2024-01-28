// Part 1
// You can call the provided async function fetchRole()
// to return the user role.
Future<String> reportUserRole() async {
  var descript= await UserRole();
  return descript;
}
Future<String> UserRole(){
  Future.delayed(
    const Duration(seconds: 3),
    ()=> "A tech enthusiast with lots of cool idea in mind to implement and make the world a better place."
  );
}
// Part 2
// Implement reportLogins here
// You can call the provided async function fetchLoginAmount()
// to return the number of times that the user has logged in.
Future<int> fetchLoginAmount() async{
  int amount =await reportLogins();
  return amount;
}
Future<int>reportLogins() 
{
  Future.delayed(
    const duration(seconds:2),
    ()=> 5
  );
}

Future<void> main() async{
  List waiter=[
    fetchLoginAmount(),
    reportUserRole(),
  ];
  print(await waiter);
}