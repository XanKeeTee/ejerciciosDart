import 'dart:math' as math;

void main(){
  const numeroPi= math.pi;

  final annoActual = DateTime.now().year;

  //Inicializamos la variable, en el caso de que la funcion sea true sera año bisiesto, si no no
  int diasDelAnyo = comprobarBisiesto(annoActual) ? 366 : 365;

  //Imprimimos para comprobar
  print(numeroPi);
  print(diasDelAnyo);
}

//Funcion para comprobar si es año bisiesto
bool comprobarBisiesto(anno){
  //Devuelve un booleano comprobando si el año es bisiesto
  return (anno % 4 == 0 && anno % 100 != 0) || (anno % 400 == 0);
  }