import 'dart:ffi';
import 'dart:io';
import 'dart:convert';
import 'dart:svg';

import 'dart:web_gl';

class Serialize {
  int lastUpdateId;
  List bids = [];
  List asks = [];

  Serialize(this.lastUpdateId, this.asks, this.bids);
  toJson() => {'lastUpdateId': lastUpdateId, 'bids': bids, 'asks': asks};
}

void JsonEncodeSerial() {
  List numSerialAsks = [], numSerialBids = [];

  for (var i = 0; i <= 10; i++) {
    var price = stdin.readLineSync();
    var volume = stdin.readLineSync();

    print('price: $price and volume: $volume');
    List value = [price, volume];
    print(value);
    numSerialAsks.add(value);
  }

  final serial = Serialize(5633523231, numSerialAsks, numSerialBids);

  final jsonenSerial = jsonEncode(serial);
  print('$jsonenSerial\n');
}
/* 
class JsonDecodeSerial extends Json {
  final jsondeSerial = jsonDecode(serial.toString());
  print(jsondeSerial);
} */
