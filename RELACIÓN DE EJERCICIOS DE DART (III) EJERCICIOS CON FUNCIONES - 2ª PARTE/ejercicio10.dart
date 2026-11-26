import 'dart:io';

bool esCorreo(String correo) {
  final RegExp expresion = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]{2,}$');
  return expresion.hasMatch(correo);
}

void main() {
  stdout.write('Introduce un correo: ');
  final String? correo = stdin.readLineSync();
  if (correo == null) {
    return;
  }

  print(esCorreo(correo));
}
