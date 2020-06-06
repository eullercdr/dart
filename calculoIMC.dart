import 'dart:io';

main(){
  
  print("== Digite seu peso ==");
  var txtPeso=stdin.readLineSync();
  var peso=int.parse(txtPeso);
  
  print("== Digite sua altura ==");
  var txtAltura = stdin.readLineSync();
  var altura=double.parse(txtAltura);

  double calcImc = peso/(altura*altura);
  print ("Seu IMC é: " + calcImc.toString());

  print("#############");

  if(calcImc<18.5){
    print("Abaixo do peso");
  }
  else if(calcImc>18.5 && calcImc<24.9){
    print ("Peso normal");
  }
  else if(calcImc>25 && calcImc<29.9){
    print ("sobrepeso");
  }
  else if(calcImc>30 && calcImc<34.9){
    print ("Obsesidade Grau 1");
  }
  else if(calcImc>35 && calcImc<39.9){
    print ("Obsesidade Grau 2");
  }
  else {
    print ("Obesidade Grau 3");
  }

}