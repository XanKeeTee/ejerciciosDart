import 'dart:io';

bool esDniValido(String dni) {
  final String dniNormalizado = dni.toUpperCase();
  final RegExp formatoDni = RegExp(r'^[0-9]{8}[A-Z]$');
  if (!formatoDni.hasMatch(dniNormalizado)) {
    return false;
  }

  const String letrasControl = 'TRWAGMYFPDXBNJZSQVHLCKE';
  final int numero = int.parse(dniNormalizado.substring(0, 8));
  final String letraEsperada = letrasControl[numero % letrasControl.length];

  return dniNormalizado[8] == letraEsperada;
}

void main() {
  stdout.write('Introduce un DNI español: ');
  final String? dni = stdin.readLineSync();
  if (dni == null) {
    return;
  }

  print(esDniValido(dni));
}
