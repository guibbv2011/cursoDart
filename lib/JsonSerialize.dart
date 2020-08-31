import 'dart:io';
import 'dart:convert';

class Serialize {
  int lastUpdateId;
  List bids = [];
  List asks = [];

  Serialize(this.lastUpdateId, this.asks, this.bids);
  toJson() => {'lastUpdateId': lastUpdateId, 'asks': asks, 'bids': bids};
}

class Deserialize {
  int lastUpdateId;
  List bids, asks;

  Deserialize(this.lastUpdateId, this.asks, this.bids);

  factory Deserialize.fromJson(dynamic json) {
    return Deserialize(json['lastUpdateId'] as int, json['asks'] as List,
        json['bids'] as List);
  }

  @override
  String toString() {
    return '${this.lastUpdateId}{${this.bids}, ${this.asks}}';
  }
}

void JsonSerial() {
  List numSerialAsks = [], numSerialBids = [];
  print('Apply a quantity of Level\'s orders\'s');
  var qntNumSerial = int.parse(stdin.readLineSync());
  print('\n');

  _encodedSerial(qnt, typeSerial) {
    for (var i = 0; i <= qnt; i++) {
      var price = stdin.readLineSync();
      var volume = stdin.readLineSync();

      print('price: $price and volume: $volume');
      List value = [price, volume];
      print(value);
      typeSerial.add(value);
    }
  }

  print('Apply price & volume for Asks order\'s');
  _encodedSerial(qntNumSerial, numSerialAsks);
  print('List of Asks finished\n\n');

  print('Apply price & volume for Bids order\'s');
  _encodedSerial(qntNumSerial, numSerialBids);
  print('List of bids finished\n\n');

  final serial = Serialize(5633523231, numSerialAsks, numSerialBids);
  final serialEncodedJson = jsonEncode(serial);
  print('$serialEncodedJson\n');

  Deserialize serialDecodedJson =
      Deserialize.fromJson(jsonDecode(serialEncodedJson));

  var asks = serialDecodedJson.asks.asMap();
  var bid = serialDecodedJson.bids.asMap();
  print(asks[1][1]);
  print(bid[1][1]);
}
