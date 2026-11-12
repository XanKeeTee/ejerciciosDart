void main() {
  print(mostrarEmpleado("Juan", 101));
  print(mostrarEmpleado("María"));
  print(mostrarEmpleado());
}

String mostrarEmpleado([String nombre = 'desconocido', int id = 999]) {
  return("Nombre: $nombre, ID: $id");
}