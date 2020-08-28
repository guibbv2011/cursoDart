import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

final host = Platform.localHostname;
final port = 3000;

void Server() async {
  var serverSocket = await ServerSocket.bind(host, port);
  print('Escutando mensagens do além...');

  await for (var socket in serverSocket) {
    socket.listen((List values) {
      print('Mensagens do além: ${utf8.decode(values)}');
    });
  }
}

void Client() async {
  var client = await Socket.connect(host, port);
  print('enviando msg do ${client.remoteAddress}, ${client.port}: Nice!');
}

void HttpGet() async {
  var url = 'http://api.binance.com/api/v3/depth';
  var response = await http.get(url);
  print('O servidor respondeu com status ${response.statusCode}');
  print('O corpo da request é: \n\n ${response.body}');
}
