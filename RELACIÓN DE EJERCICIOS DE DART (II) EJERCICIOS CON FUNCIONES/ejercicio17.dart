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
  if (dividendo < divisor) {
    return 0;
  }
  return 1 + calcularCociente(dividendo - divisor, divisor);
}

int calcularResto(int dividendo, int divisor) {
  if (dividendo < divisor) {
    return dividendo;
  }
  return calcularResto(dividendo - divisor, divisor);
}