double calcularMaxima(List<double> temperaturas) {
  if (temperaturas.isEmpty) {
    throw ArgumentError.value(
      temperaturas,
      'temperaturas',
      'La lista no puede estar vacía.',
    );
  }

  double maxima = temperaturas.first;
  for (double temperatura in temperaturas.skip(1)) {
    if (temperatura > maxima) {
      maxima = temperatura;
    }
  }
  return maxima;
}

double calcularMinima(List<double> temperaturas) {
  if (temperaturas.isEmpty) {
    throw ArgumentError.value(
      temperaturas,
      'temperaturas',
      'La lista no puede estar vacía.',
    );
  }

  double minima = temperaturas.first;
  for (double temperatura in temperaturas.skip(1)) {
    if (temperatura < minima) {
      minima = temperatura;
    }
  }
  return minima;
}

double calcularMedia(List<double> temperaturas) {
  if (temperaturas.isEmpty) {
    throw ArgumentError.value(
      temperaturas,
      'temperaturas',
      'La lista no puede estar vacía.',
    );
  }

  double suma = 0;
  for (double temperatura in temperaturas) {
    suma += temperatura;
  }
  return suma / temperaturas.length;
}