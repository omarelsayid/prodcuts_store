import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List> getProducts() async {
    try {
      http.Response response =
          await http.get(Uri.parse('https://fakestoreapi.in/api/products'));

      if (response.statusCode == 200) {
        List data = jsonDecode(response.body)["products"];
     
        return data;
      } else {
        throw Exception('error in fetching ${response.body.toString()}');
      }
    } on Exception catch (e) {
      log('Error is fetching producs: $e');
      return [];
    }
  }
}
