import 'dart:io';

void main(){
  stdout.write('Introduce el numero: ');
  String? entrada = stdin.readLineSync();

  int? numero = int.tryParse(entrada ?? '');

  if (numero != null) {
    for (int i = 1; i <= 10;i++){
      print("$numero*$i = ${i*numero}");
    }
  }
    
}