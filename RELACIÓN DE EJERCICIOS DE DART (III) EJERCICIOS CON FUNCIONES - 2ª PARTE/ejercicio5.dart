import 'dart:convert';

enum Rol { estudiante, profesor, admin }

void main() {
  String strEntero = "42";
  String strDecimal = "3.14159";
  String strBooleano = "true";
  String strLista = '["Dart", "Flutter", "Angular"]';
  String strMapa = '{"uno": 1, "dos": 2}';
  String strEnum = "Rol.profesor";
  String strSet = "10,20,30";

  int entero = int.parse(strEntero);
  double decimal = double.parse(strDecimal);
  bool booleano = bool.parse(strBooleano);

  List<dynamic> lista = jsonDecode(strLista);
  Map<String, dynamic> mapa = jsonDecode(strMapa);
  Rol enumerado = Rol.values.byName(strEnum.split('.').last);
  Set<int> conjunto = strSet.split(',').map(int.parse).toSet();

  print("int: $entero");
  print("double: $decimal");
  print("bool: $booleano");
  print("List: $lista");
  print("Map: $mapa");
  print("Enum: $enumerado");
  print("Set: $conjunto");

  print("\n--- Formateo de double a String ---");
  double precio = 19.8567;
  print("toStringAsFixed(2): ${precio.toStringAsFixed(2)}");
  print("toStringAsPrecision(3): ${precio.toStringAsPrecision(3)}");
  print("toStringAsExponential(2): ${precio.toStringAsExponential(2)}");
}