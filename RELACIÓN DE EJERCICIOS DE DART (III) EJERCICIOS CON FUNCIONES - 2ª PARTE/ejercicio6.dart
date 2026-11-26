import 'dart:io';

void main(List<String> args) {
  stdout.write('Ponga una cadena de caracteres: ');
  String? entrada = stdin.readLineSync();

  bool esPalindromo(String cadena) {
    String reversa = cadena.split('').reversed.join('');
    return reversa == cadena;
  }

  print(esPalindromo(entrada.toString()));
}
