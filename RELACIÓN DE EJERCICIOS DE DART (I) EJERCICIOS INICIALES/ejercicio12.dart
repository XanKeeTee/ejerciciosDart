int calcularMCD(int a,int b){
  if(b == 0){
    return a.abs();
  }
  return calcularMCD(b, a % b);
}
void main(){
  int num1 = 270;
  int num2 = 192;
  
  print('El MCD de $num1 y $num2 es: ${calcularMCD(num1, num2)}');
}