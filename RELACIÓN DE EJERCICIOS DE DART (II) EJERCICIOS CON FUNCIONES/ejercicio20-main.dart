import './ejercicio20-funciones.dart' as ej20;

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

  double maxima = ej20.calcularMaxima(temperaturasMaximas);
  double minima = ej20.calcularMinima(temperaturasMaximas);
  double media = ej20.calcularMedia(temperaturasMaximas);

  int indiceMaxima = temperaturasMaximas.indexOf(maxima);
  int indiceMinima = temperaturasMaximas.indexOf(minima);

  print('Temperatura máxima: $maxima°C (${dias[indiceMaxima]})');
  print('Temperatura mínima: $minima°C (${dias[indiceMinima]})');
  print('Temperatura media: ${media.toStringAsFixed(2)}°C');
}