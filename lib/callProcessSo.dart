import 'dart:io';
import 'dart:convert';

void callProcessOs() {
  Process.run('ls', ['-la']).then((ProcessResult result) {
    print(result.stdout);
  });

  Process.start('cat', []).then((Process process) {
    process.stdout.transform(utf8.decoder).listen((data) {
      print(data);
    });
    process.stdin
        .write('Olá todos eu sou dart e acabei de interagir com processos xD');

    Process.killPid(process.pid);
  }); //.whenComplete(() => Process.killPid(pid));
}
