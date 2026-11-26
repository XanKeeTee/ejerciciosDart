import 'dart:io';

void main(List<String> args) {
  List<String> colores = ['rojo', 'verde', 'azul'];
  bool condicion = true;

  while (condicion) {
    print("1. Incluir color");
    print("2. Eliminar color");
    print("3. Buscar color");
    print("4. Mostrar lista de colores");
    print("5. Salir");

    stdout.write('Seleccione una opcion: ');
    final String? opcion = stdin.readLineSync();

    switch (opcion) {
      case "1":
        stdout.write('Color a introducir: ');
        final String? color = stdin.readLineSync();

        colores.add(color.toString());
        print("Color introducido");
      case "2":
        stdout.write('Color a borrar: ');
        final String? colorUsuario = stdin.readLineSync();

        for(String color in colores){
          if(colorUsuario.toString() == color){
            colores.remove(color);
            break;
          }
        }
      case "3":
        stdout.write('Color a buscar: ');
        final String? colorUsuario = stdin.readLineSync();
        
        if (colores.contains(colorUsuario)){
          print('El color $colorUsuario esta dentro de la lista');
          break;
        }else{
          print("El color $colorUsuario no esta dentro de la lista");
          break;
        }

      case "4":
        for(String color in colores){
          print(color);
        }
      case "5":
        condicion = false;
    }
  }
}
