import 'pessoa.dart';

void main() {
  var p1 = Pessoa(nome: 'Francisco', email: 'teste@gmail.com');
  var p2 = Pessoa(nome: 'Pedro', email: 'teste@gmail.com');

  print('hashcode: ${p1.hashCode}');
  print('hashcode: ${p2.hashCode}');

  print(p1);
  print(p2);

  if (p1 == p2) {
    print('É igual');
  } else {
    print('não é igual');
  }
}
