import 'dart:io';

void main() {
  stdout.write('Introduce una frase: ');
  final String? frase = stdin.readLineSync();
  if (frase == null) {
    return;
  }

  stdout.write('Introduce una subcadena: ');
  final String? subcadena = stdin.readLineSync();
  if (subcadena == null) {
    return;
  }

  final int primeraPosicion = frase.indexOf(subcadena);
  if (primeraPosicion == -1) {
    print('La subcadena no está contenida en la frase.');
    return;
  }

  final int ultimaPosicion = frase.lastIndexOf(subcadena);
  print('Primera posición: $primeraPosicion');
  print('Última posición: $ultimaPosicion');
}
