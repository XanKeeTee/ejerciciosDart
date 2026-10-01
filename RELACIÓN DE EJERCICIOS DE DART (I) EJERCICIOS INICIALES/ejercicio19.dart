void main() {
  Map<String, int?> personas = {
    'Ana': 28,
    'Carlos': null,
    'Beatriz': 34,
    'David': null,
    'Elena': 22,
  };

  print('--- 1. Claves y Valores ---');
  personas.forEach((nombre, edad) {
    String edadTexto = (edad != null) ? '$edad años' : 'Edad no inicializada';
    print('Nombre: $nombre -> $edadTexto');
  });

  print('\n--- 2. Solo Claves (Nombres) ---');
  for (String nombre in personas.keys) {
    print('Nombre: $nombre');
  }

  print('\n--- 3. Solo Valores (Edades) ---');
  for (int? edad in personas.values) {
    if (edad == null) {
      print('Edad: [No inicializada]');
    } else {
      print('Edad: $edad');
    }
  }
}