import 'pessoa.dart';

void main() {
  // o objeto precisa do modificador const quando tem um construtor const
  // caso tenha alguma variável que não seja const, pode ser criado um obj com
  // construtor sem ser const.
  var p1 = const Pessoa(nome: 'Francisco', idade: 31);
  var p2 = const Pessoa(nome: 'Francisco', idade: 31);
  var p3 = const Pessoa(nome: 'Francisco', idade: 31);

  print(p1 == p2);
  print(p1 == p2 && p2 == p3);
}
