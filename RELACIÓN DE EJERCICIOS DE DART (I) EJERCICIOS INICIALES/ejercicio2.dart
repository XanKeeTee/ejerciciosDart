void main(){
  // Los datos built in son tipos de datos basicos que vienen predefinidos en dart

  //Inicializamos las primeras variables
  int numeroEntero = 2;
  double numeroDouble = 2.3;
  String caracter = ("Hola caracola");
  bool boleano = true;
  dynamic variable = 13;

  //Inicializamos las otras variables (List,Map,Set y record)
  List lista = [1,2,3,4];
  Set diccionario = {1,2,3,4};
  Map<String,String> map= {"nombre":"miguel"};
  (int,String) record = (1,"Miguel");
  
  //Las imprimimos por pantalla
  print(lista[1]);
  print(diccionario.first);
  print(map["nombre"]);
  print(record.$1);
}