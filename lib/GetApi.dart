import 'package:http/http.dart' as http;

void HttpGet(request) async {
  final bapi = "https://api.binance.com";
  var query = '/api/v3/depth';
  query += '?symbol=$request&limit=10';
  final url = bapi + query;
  final response = await http.get(url);
  print('O servidor respondeu com status ${response.statusCode}');
  print('O corpo da request é: \n\n ${response.body}');
}
