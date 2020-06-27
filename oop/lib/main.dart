import 'package:oop/src/gato.dart';
import 'package:oop/src/pessoa.dart';

void main(List<String> arguments) {
  Gato gato = new Gato(nome: "Jerry", barulho: "Miau");
  print(gato.barulho);
}
