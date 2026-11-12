void main() {
  Duration ej1 = diferenciaHoras(14, 45);
  print("La diferenica es de ${ej1.inHours} y ${ej1.inMinutes % 60} minutos");
}

Duration diferenciaHoras(int hora, int minutos) {
  DateTime horaUsuario = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    hora,
    minutos,
  );
  DateTime now = DateTime.now();

  final diferenicia = now.difference(horaUsuario);
  return diferenicia;
}
