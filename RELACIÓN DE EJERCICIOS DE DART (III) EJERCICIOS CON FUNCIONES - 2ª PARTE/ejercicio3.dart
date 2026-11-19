import 'dart:io';

bool tieneMayusculas(String texto) {
  for (var caracter in texto.split('')) {
    if (caracter == caracter.toUpperCase() &&
        caracter != caracter.toLowerCase()) {
      return true;
    }
  }
  return false;
}

bool tieneMinusculas(String texto) {
  for (var caracter in texto.split('')) {
    if (caracter == caracter.toLowerCase() &&
        caracter != caracter.toUpperCase()) {
      return true;
    }
  }
  return false;
}
void main(List<String> args) {
  stdout.write('Ponga una palabra o cadena: ');
  String? entrada = stdin.readLineSync();

  if (entrada == null) {
    print('No has introducido ninguna entrada');
  } else if (tieneMayusculas(entrada) && tieneMinusculas(entrada)) {
    print('La entrada contiene mayúsculas y minúsculas');
  } else if (tieneMayusculas(entrada)) {
    print('La entrada contiene solo mayúsculas');
  } else if (tieneMinusculas(entrada)) {
    print('La entrada contiene solo minúsculas');
  } else {
    print('La entrada no contiene mayúsculas ni minúsculas');
  }
}
