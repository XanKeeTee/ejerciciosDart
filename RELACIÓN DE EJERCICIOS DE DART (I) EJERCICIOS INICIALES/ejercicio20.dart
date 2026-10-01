void main() {
  Map<String, double> temperaturasSemana = {
    'Lunes': 22.5,
    'Martes': 24.0,
    'Miércoles': 21.0,
    'Jueves': 26.5,
    'Viernes': 25.0,
    'Sábado': 27.5,
    'Domingo': 23.0,
  };

  if (temperaturasSemana.isEmpty) {
    print('No hay datos de temperaturas disponibles.');
    return;
  }

  String diaMax = temperaturasSemana.keys.first;
  double tempMax = temperaturasSemana.values.first;

  String diaMin = temperaturasSemana.keys.first;
  double tempMin = temperaturasSemana.values.first;

  double sumaTemperaturas = 0.0;

  temperaturasSemana.forEach((dia, temp) {
    sumaTemperaturas += temp;

    if (temp > tempMax) {
      tempMax = temp;
      diaMax = dia;
    }

    if (temp < tempMin) {
      tempMin = temp;
      diaMin = dia;
    }
  });

  double media = sumaTemperaturas / temperaturasSemana.length;

  // Mostrar resultados
  print('=== ESTADÍSTICAS DEL TIEMPO ===');
  print('Temperatura máxima: $tempMax°C (Producida el $diaMax)');
  print('Temperatura mínima: $tempMin°C (Producida el $diaMin)');
  print('Media aritmética de las máximas: ${media.toStringAsFixed(2)}°C');
}