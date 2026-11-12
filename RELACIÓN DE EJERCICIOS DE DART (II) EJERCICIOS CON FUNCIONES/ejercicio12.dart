void main() {
  Map<String, double> temperaturasMaximas = {
    'Lunes': 22.5,
    'Martes': 24.0,
    'Miércoles': 21.0,
    'Jueves': 26.5,
    'Viernes': 25.0,
    'Sábado': 27.5,
    'Domingo': 23.0,
  };

  mostrarMaxima(temperaturasMaximas);
  mostrarMinima(temperaturasMaximas);
  mostrarMedia(temperaturasMaximas);
}

bool _hayTemperaturas(Map<String, double> temperaturas) {
  if (temperaturas.isEmpty) {
    print('No hay temperaturas disponibles.');
    return false;
  }
  return true;
}

void mostrarMaxima(Map<String, double> temperaturas) {
  if (!_hayTemperaturas(temperaturas)) {
    return;
  }

  MapEntry<String, double> maxima = temperaturas.entries.first;
  for (MapEntry<String, double> entrada in temperaturas.entries.skip(1)) {
    if (entrada.value > maxima.value) {
      maxima = entrada;
    }
  }

  print('Temperatura máxima: ${maxima.value}°C (${maxima.key})');
}

void mostrarMinima(Map<String, double> temperaturas) {
  if (!_hayTemperaturas(temperaturas)) {
    return;
  }

  MapEntry<String, double> minima = temperaturas.entries.first;
  for (MapEntry<String, double> entrada in temperaturas.entries.skip(1)) {
    if (entrada.value < minima.value) {
      minima = entrada;
    }
  }

  print('Temperatura mínima: ${minima.value}°C (${minima.key})');
}

void mostrarMedia(Map<String, double> temperaturas) {
  if (!_hayTemperaturas(temperaturas)) {
    return;
  }

  double suma = 0;
  for (double temperatura in temperaturas.values) {
    suma += temperatura;
  }

  double media = suma / temperaturas.length;
  print('Temperatura media: ${media.toStringAsFixed(2)}°C');
}