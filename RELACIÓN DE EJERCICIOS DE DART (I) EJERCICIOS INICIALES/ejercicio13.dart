void main() {
  int a = 13, b = 4; // Dividendo y Divisor
  int cociente = 0, resto = a;

  while (resto >= b) {
    resto -= b;
    cociente++;
  }

  print('Cociente: $cociente, Resto: $resto');
}