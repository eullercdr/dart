import 'dart:io';

main(){
  
  List<String> nomes=["Jacob Moura", "Luiza Moura", "Sara Moura"];
  
  print(nomes.length);

  nomes.add("Edson");

  print(nomes.length);
  nomes.remove("Jacob Moura");
  print(nomes);

  
}

