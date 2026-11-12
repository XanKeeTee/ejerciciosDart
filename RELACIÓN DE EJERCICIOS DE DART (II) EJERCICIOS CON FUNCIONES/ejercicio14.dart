int sumar(int a,int b){
  if(b == 0){
    return a;
  }

  return sumar(a+1,b-1);
}

void main(List<String> args) {
  int resultado = sumar(15,5);

  print(resultado);
}
