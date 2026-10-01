void main(){
  List<String> diasSemana = ["Lunes","Martes","Miercoles","Jueves","Viernes"];

  for (String dia in diasSemana){
    print(dia);
  }

  diasSemana.add("Sabado");
  diasSemana.add("Domingo");
  
  for (String dia in diasSemana){
    print(dia);
  }

  print("-----------------------------------------");
  Map<String,int> nombres = {"Miguel":18,"Badr":22,"Daniel":11};
  nombres.forEach((nombre,edad){
    print('$nombre tiene $edad años');
  });
}