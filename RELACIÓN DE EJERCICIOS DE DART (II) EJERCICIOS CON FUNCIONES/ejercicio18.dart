List<int> fibonacciIterativo(int n) {
  if (n < 2){
    List<int> Lista = [];
    Lista.add(n);
    return Lista;
  }

  int anterior = 0;
  int actual = 1;

  List<int> lista = [];

  for (int i = 2; i <= n+1; i++) {
    int siguiente = anterior + actual;
    anterior = actual;
    lista.add(actual);
    actual = siguiente;
  }

  return lista;
}

void main() {
  print(fibonacciIterativo(10)); // Imprime: 55
}