import 'dart:io';

void main(){
  stdout.write('Introduce el primer numero: ');
  String? entrada = stdin.readLineSync();

  int? numero1 = int.tryParse(entrada ?? '');

  stdout.write('Introduce el segundo numero numero: ');
  entrada = stdin.readLineSync();

  int? numero2 = int.tryParse(entrada ?? '');

  stdout.write('Introduce operador: ');
  String? operador = stdin.readLineSync();

  if (numero1 != null && numero2 != null) {
    switch(operador){
      case "+":
        print("La suma de los dos numeros es de: ${numero1+numero2}");
      case "-":
        print("La resta de los dos numeros es de: ${numero1-numero2}");
      case "*":
        print("La multiplicacion de los dos numeros es de: ${numero1*numero2}");
      case "/":
        print("La division de los dos numeros es de: ${numero1/numero2}");
      case "%":
        print("El resto de la division de los dos numeros es de: ${numero1%numero2}");
    }
  }

}