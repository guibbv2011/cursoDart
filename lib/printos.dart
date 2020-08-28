import 'dart:io';

void printOS() {
  print('SO: ${Platform.operatingSystem} ${Platform.version}');
  print('Path: ${Platform.script.path}');
}
