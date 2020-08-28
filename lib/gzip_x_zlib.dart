import 'dart:convert';

String generateData() {
  var data = '';

  for (var i = 0; i < 50; i++) {
    data = data + 'Olá mundo\r\n';
  }
  return data;
}

int testCompress(codec) {
  final data = generateData();

  List original = utf8.encode(data);
  List<int> compressed = codec.encode(original);
  List<int> decompressed = codec.decode(compressed);

  print('Test ${codec.toString()}');
  print('Original ${original.length} bytes');
  print('Comprimido ${compressed.length} bytes');
  print('Descomprimido ${decompressed.length} bytes');
  print('');

  final decoded = utf8.decode(decompressed);
  assert(data == decoded);

  return compressed.length;
}
