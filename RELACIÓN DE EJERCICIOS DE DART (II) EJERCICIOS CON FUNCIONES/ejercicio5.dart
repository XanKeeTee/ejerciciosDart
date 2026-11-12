void main() {
  DateTime resultado = calcularFechaHora(14, 45);
  print("La fecha y hora resultante es: $resultado");
}

DateTime calcularFechaHora(int hora, int minutos) {
  DateTime now = DateTime.now();
  
  DateTime fechaHoraDestino = DateTime(
    now.year,
    now.month,
    now.day,
    hora,
    minutos,
  );

  return fechaHoraDestino;
}