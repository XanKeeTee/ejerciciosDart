void main() {
  int dividendo = 17;
  int divisor = 5;

  if (dividendo <= 0 || divisor <= 0) {
    print('Ambos números deben ser enteros positivos.');
    return;
  }

  int cociente = calcularCociente(dividendo, divisor);
  int resto = calcularResto(dividendo, divisor);

  print('División de $dividendo entre $divisor:');
  print('Cociente: $cociente');
  print('Resto: $resto');
}

int calcularCociente(int dividendo, int divisor) {
  int cociente = 0;
  int acumulado = dividendo;

  while (acumulado >= divisor) {
    acumulado -= divisor;
    cociente++;
  }

  return cociente;
}

int calcularResto(int dividendo, int divisor) {
  int resto = dividendo;

  while (resto >= divisor) {
    resto -= divisor;
  }

  return resto;
}