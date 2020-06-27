import 'dart:io';

List<String> produtos = [];

main() {


bool condicao = true;

  while(condicao)
  {    
    print("==== ADICIONE UM PRODUTO ====");

    String text = stdin.readLineSync();

    if(text=="sair"){
      print ("==== Terminou o programa =====");
      condicao=false;
    }
    else if(text=="imprimir"){
       imprimir();
    }
    else if(text=="remover"){
        remover();    
    }
    else {
       produtos.add(text);
    }

  }
}

imprimir(){
for(var i=0; i<produtos.length;i++){
         print("ITEM $i - ${produtos[i]}");
     }
      print("\n");
}

remover(){
  print("=== Qual Item deseja remover");
  imprimir();
  int item = int.parse(stdin.readLineSync());
  produtos.removeAt(item);
  print("=== Item Removido com Sucesso ====");
}