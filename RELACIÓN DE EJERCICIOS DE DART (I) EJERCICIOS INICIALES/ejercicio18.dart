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
   try {
    colores colorInexistente = colores.values.byName('rosa');
    print('Color encontrado: $colorInexistente');
    
  } on ArgumentError catch (e) {
    print('[CATCH] Se ha producido un error controlado: El nombre no coincide con ningún color.');
    print('Detalle técnico del error: ${e.message}');
    
  } catch (e) {
    // Este bloque capturaría cualquier otro tipo de error genérico o inesperado
    print('[CATCH] Se produjo un error inesperado: $e');
    
  } finally {
    // Este código se ejecuta SIEMPRE, haya error o no
    print('[FINALLY] El proceso de búsqueda ha finalizado.');
  }
}