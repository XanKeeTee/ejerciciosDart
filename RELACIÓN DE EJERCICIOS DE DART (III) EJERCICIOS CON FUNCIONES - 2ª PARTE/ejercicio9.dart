import 'dart:io';

bool esUrl(String url) {
  final RegExp expresion = RegExp(r'^https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)$');
  return expresion.hasMatch(url);
}

void main() {
  stdout.write('Introduce una url: ');
  final String? url = stdin.readLineSync();
  if (url == null) {
    return;
  }

  print(esUrl(url));
}
