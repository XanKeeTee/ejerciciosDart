import 'dart:io';

bool esColorRgb(String color) {
  final RegExp expresion = RegExp(r'^#[0-9a-fA-F]{3}(?:[0-9a-fA-F]{3})?$');
  return expresion.hasMatch(color);
}

void main() {
  stdout.write('Introduce un color RGB hexadecimal: ');
  final String? color = stdin.readLineSync();
  if (color == null) {
    return;
  }

  print(esColorRgb(color));
}
