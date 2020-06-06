import 'dart:io';

main(){
  
  print("== Digite seu peso ==");
  var txtPeso=stdin.readLineSync();
  var peso=int.parse(txtPeso);
  
  print("== Digite sua altura ==");
  var txtAltura = stdin.readLineSync();
  var altura=double.parse(txtAltura);

  double calcImc = calculoImc(peso, altura);
  
  print("#############");

  print ("Seu IMC é: " + calcImc.toString());

  print("#############");
  
  print(resultado(calcImc)); 

  print("#############"); 

}

/**
 * Realiza o calculo do IMC
 */
double calculoImc(int peso, double altura){
  return peso / (altura * altura);
}

/**
 * Retorna a string de resultado
 */
String resultado(double calcImc){

if(calcImc<18.5){
   return "Abaixo do peso";
  }
  else if(calcImc>18.5 && calcImc<24.9){
    return "Peso normal";
  }
  else if(calcImc>25 && calcImc<29.9){
    return "sobrepeso";
  }
  else if(calcImc>30 && calcImc<34.9){
    return "Obsesidade Grau 1";
  }
  else if(calcImc>35 && calcImc<39.9){
    return "Obsesidade Grau 2";
  }
  else {
   return "Obesidade Grau 3";
  }
}