void main() {
  int n = 7;

  List<int> primos = generarPrimos(n);
  print('Números primos entre 1 y $n: $primos');
}

List<int> generarPrimos(int n) {
  List<int> primos = [];
  _agregarPrimosDesde(2, n, primos);
  return primos;
}

void _agregarPrimosDesde(int actual, int n, List<int> primos) {
  if (actual > n) {
    return;
  }

  if (esPrimo(actual)) {
    primos.add(actual);
  }

  _agregarPrimosDesde(actual + 1, n, primos);
}

bool esPrimo(int num) {
  if (num <= 1) {
    return false;
  }

  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
