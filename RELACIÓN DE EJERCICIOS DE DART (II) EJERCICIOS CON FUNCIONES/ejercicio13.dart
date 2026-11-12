void main(List<String> args) {
  int n = 7;
  bool primo = esPrimo(n);
  print('El numero $n es primo?: $primo');
  primo = esPrimo(16);
  print('El numero 16 es primo?: $primo');
}

bool esPrimo(int num) {
  if (num <= 1) return false;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}