void main(List<String> args) {
  print(mostrarEmpleado("Miguel","Gambero"));
  print(mostrarEmpleado("Miguel"));
}

String mostrarEmpleado(String nombre, [String? apellido]) {
  if (apellido == null) {
    apellido = "Apellido  desconocido";
  }
  return '$nombre $apellido';
}