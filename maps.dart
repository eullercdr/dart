import 'dart:io';

List<Map<String,dynamic>> cadastros = [];
Map<String,dynamic> cadastro={};

main(){
   bool condicao = true;
   while(condicao){
     print("=== Digite um comando ===");
     String comando = stdin.readLineSync();
     if(comando=="sair"){
       print("=== Programa Finalizado");
       condicao=false;
     } else if(comando=="cadastro"){
       cadastrar();
     }else if(comando=="imprimir"){
       print(cadastros);
     }
   }
}

cadastrar(){
print("=== Digite seu nome ===");
   cadastro["nome"]=stdin.readLineSync();

   print("=== Digite sua idade ===");
   cadastro["idade"]=stdin.readLineSync();

   print("=== Digite sua cidade ===");   
   cadastro["cidade"]=stdin.readLineSync();

   print("=== Digite seu estado ===");  
   cadastro["estado"]=stdin.readLineSync();

   cadastros.add(cadastro);
}