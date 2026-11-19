import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  Random random = Random();
  int valorAdivinar = random.nextInt(100);
  bool adinivado = true;

  while (adinivado) {
    stdout.write('Adivina el numero: ');
    String? entrada = stdin.readLineSync();

    int? numUsuario = int.tryParse(entrada ?? '');

    int diferencia = (valorAdivinar - numUsuario!).abs();

    if (diferencia == 0) {
      adinivado = false;
      print("Adivinaste el numero!");
    } else if (diferencia <= 5) {
      print('¡Muy caliente! Estas muy cerca.');
    } else if (diferencia <= 15) {
      print('Caliente, te vas acercando.');
    } else if (diferencia <= 30) {
      print('Frio, aun estas algo lejos.');
    } else {
      print('Muy frio, estas muy lejos.');
    }
  }
}
