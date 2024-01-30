import 'package:http/http.dart' as http;
import "dart:convert";

///Go into the map of data in the jsonplaceholder api
///Get the first list and the print the name property only
///Uri.https is used to get the domain name of the api. followed by the path
///as http, so as to ensure that misnaming of functions do not interfare...
///The get function is a global function that enables us to get data from an api.
///The data gotten is in form of a string, and for it to be manipulated,
///We convert it back to a map by using the jsonDecode function from dart:convert library
///jsonEncode deos the opposite of jsonDecode function
///results.body, takes us into the actual data
Future<String> getData() async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');
  final results = await http.get(url);
  return jsonDecode(results.body)['name'];
}

void main() async {
  try {
    var data = await getData();
    print("Hi $data");
  } catch (e) {
    print("Unsxpected error occured. Please try again: ${e.toString()}");
  }
}
