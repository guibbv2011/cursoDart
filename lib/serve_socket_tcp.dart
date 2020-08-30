import 'dart:io';
import 'dart:convert';

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
