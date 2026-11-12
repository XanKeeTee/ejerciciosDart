void main() {
  int numero = 42;
  print("$numero en binario es ${convertirBase(numero)}");
  print("$numero en base 8 es ${convertirBase(numero, 8)}");
}

String convertirBase(int numero, [int base = 2]) {
  if (numero < 0) {
    throw ArgumentError.value(numero, 'numero', 'Debe ser un entero positivo');
  }
  if (base < 2 || base > 8) {
    throw ArgumentError.value(base, 'base', 'Debe estar entre 2 y 8');
  }
  if (numero == 0) {
    return '0';
  }

  String resultado = '';
  while (numero > 0) {
    resultado = '${numero % base}$resultado';
    numero ~/= base;
  }
  return resultado;
}
