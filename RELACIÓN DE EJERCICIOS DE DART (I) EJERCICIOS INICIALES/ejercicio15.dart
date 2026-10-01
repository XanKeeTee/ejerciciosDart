import 'dart:math';
void main(){
  int n = 101;

  print('--- SIMULACIÓN DE DADO NORMAL ($n lanzamientos) ---');
  simularDado(n, trucado: false);
  
  print('\n--- SIMULACIÓN DE DADO TRUCADO ($n lanzamientos) ---');
  simularDado(n, trucado: true);
}

void simularDado(int n,{required bool trucado}){
  Random random = Random();
  Map<int, int> frecuencias = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0};

  for (int i = 0; i < n;i++){
    int resultado;
    if(!trucado){
      resultado = random.nextInt(6)+1;
    }else{
      List<int> opciones = List<int>.from([1, 2, 3, 4, 5, 6, 6, 6]);
      resultado = opciones[random.nextInt(opciones.length)];
    }
    frecuencias[resultado] = frecuencias[resultado]! + 1;
  }
  frecuencias.forEach((cara, cantidad) {
    double porcentaje = (cantidad / n) * 100;
    print('Cara $cara: $cantidad veces (${porcentaje.toStringAsFixed(2)}%)');
  });
}