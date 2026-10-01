enum colores {
  rojo,
  naranja,
  amarillo,
  verde,
  anil,
  azul,
  violeta,
}
void main(){ 
  print(colores.values);

  print('\n--- Uno por índice (índice 3) ---');
  print(colores.values[3]);

  print('\n--- Uno por su nombre ---');
  colores colorPorNombre = colores.values.byName('azul');
  print(colorPorNombre);

  print('\n--- Provocando excepción ---');
  
  colores colorInexistente = colores.values.byName('rosa');
  print('Color encontrado: $colorInexistente');
}