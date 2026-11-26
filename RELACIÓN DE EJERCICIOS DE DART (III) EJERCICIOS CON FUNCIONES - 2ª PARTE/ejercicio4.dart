enum Rol { estudiante, profesor, admin }
void main(List<String> args) {
  String string = "Hola";
  int numero = 12;
  double decimal = 12.5;
  bool boleano = true;
  List<String> lista = ["Dart", "Flutter", "Angular"];
  Map<String, int> mapa = {"uno": 1, "dos": 2};
  Rol enumerado = Rol.estudiante;
  Set<int> conjunto = {10, 20, 30};

  print((string+numero.toString()));
  print((string+decimal.toString()));
  print((string+boleano.toString()));
  print((string+lista.toString()));
  print((string+mapa.toString()));
  print((string+enumerado.toString()));
  print((string+conjunto.toString()));
}