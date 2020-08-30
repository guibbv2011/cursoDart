//import 'dart:convert';
//import 'dart:io';
//import 'dart:async';

//import 'package:cursoDart/GetApi.dart';
import 'dart:convert';

///import 'package:cursoDart/serve_socket_tcp.dart';
//import 'package:cursoDart/gzip_x_zlib.dart';
//import 'package:cursoDart/printos.dart';
//import 'package:cursoDart/callProcessSo.dart';
import 'package:cursoDart/JsonSerialize.dart';

void main() async {
  //-=-=-= Read and Write on SO -=-=-=
  //printOS();
  //callProcessOs();
  //-=-=-=--=-=-=--=-=-=--=-=-=--=-=-=-

  //-=-=-= compress GZIP x ZLIB -=-=-=
  /* final zlib_comp = testCompress(zlib);
  final gzip_comp = testCompress(gzip);
  print('zlib ${zlib_comp}');
  print('gzip ${gzip_comp}'); */
  //-=-=-=--=-=-=--=-=-=--=-=-=--=-=-=-

  //-=-=-=- Server Socket TCP -=-=-=-
  //Server();
  //Client();
  //-=-=-=--=-=-=--=-=-=--=-=-=--=-=-=-

  //-=-=-=--=-=-= HttpGet =-=-=--=-=-=-
  //HttpGet('BTCUSDT');
  //-=-=-=--=-=-=--=-=-=--=-=-=--=-=-=-

  //-=-=-=--=-=-= HttpGet =-=-=--=-=-=-
  JsonEncodeSerial();
  //JsonDecodeSerial();

  //-=-=-=--=-=-=--=-=-=--=-=-=--=-=-=-
}
