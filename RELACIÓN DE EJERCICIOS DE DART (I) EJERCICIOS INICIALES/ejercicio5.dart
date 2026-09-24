void main(){

  double lado1 = 5;
  double lado2 = 4;
  double lado3 = 3;

  if(lado1 == lado2 && lado1 == lado3 && lado2 == lado3){
    print("Es un triangulo Equilatero");
  }else if(lado1 == lado2 || lado1 == lado3 || lado2 == lado3){
    print("Es un triangulo Isoceles");
  }else{
    print("Es un triangulo Escaleno.");
  }
}