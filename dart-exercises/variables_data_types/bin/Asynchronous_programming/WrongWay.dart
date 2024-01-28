const createOrderMessage(){
  var order=userOrder();
  return  "The order is: $order";
}
Future<String> userOrder () => Future.delay(
  const Duration(seconds:2),
  ()=> "Tomato",
);
void main()
{
  print(createOrderMessage());
}