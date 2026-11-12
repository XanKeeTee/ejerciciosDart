void main(List<String> args) {
  calcularFactorial(5);
}

void calcularFactorial(int valor){
  if (valor < 0) {
    print("El factorial no está definido para números negativos");
    return;
  }

  int total = 1;
  for (int i = 1; i <= valor; i++) {
    total *= i;
  }
  print("El factorial de $valor es $total");
}