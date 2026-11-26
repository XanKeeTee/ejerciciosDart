bool esColorRgb(String color) {
  final RegExp expresion = RegExp(r'^#[0-9a-fA-F]{3}(?:[0-9a-fA-F]{3})?$');
  return expresion.hasMatch(color);
}

bool esUrl(String url) {
  final RegExp expresion = RegExp(r'^https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)$');
  return expresion.hasMatch(url);
}

bool esCorreo(String correo) {
  final RegExp expresion = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]{2,}$');
  return expresion.hasMatch(correo);
}

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