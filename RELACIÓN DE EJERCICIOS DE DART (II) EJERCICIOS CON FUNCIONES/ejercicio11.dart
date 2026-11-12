void main() {
  List<String> dias = [
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes',
    'Sábado',
    'Domingo',
  ];
  List<double> temperaturasMaximas = [22.5, 24.0, 21.0, 26.5, 25.0, 27.5, 23.0];

  if (temperaturasMaximas.isEmpty) {
    print('No hay temperaturas disponibles.');
    return;
  }

  double maxima = calcularMaxima(temperaturasMaximas);
  double minima = calcularMinima(temperaturasMaximas);
  double media = calcularMedia(temperaturasMaximas);

  int indiceMaxima = temperaturasMaximas.indexOf(maxima);
  int indiceMinima = temperaturasMaximas.indexOf(minima);

  print('Temperatura máxima: $maxima°C (${dias[indiceMaxima]})');
  print('Temperatura mínima: $minima°C (${dias[indiceMinima]})');
  print('Temperatura media: ${media.toStringAsFixed(2)}°C');
}

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

// Otras opciones: guardar día y temperatura juntos en un Map o en una clase,
// y devolver ese dato completo en lugar de devolver solo la temperatura.