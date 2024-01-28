Future<String> Userinfor() async{
   return await Future.delayed(
    const Duration(seconds:2),
    ()=> "Delbert"
   ) 
}
Future<void> main()
async{
   print(await Userinfor());
}
/// The async keyword comes before the body of the function
/// The await keyword comes just beofore the asynchronous instruction.
/// 