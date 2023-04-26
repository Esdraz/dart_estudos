import 'cliente.dart';

void main() {
  var c1 = Cliente(nome: 'Francisco', telefone: '999999999');
  var c2 = Cliente(nome: 'Pedro', telefone: '999999999');
  var c3 = Cliente(nome: 'Maria', telefone: '999999999');
  var c4 = Cliente(nome: 'Adalberto', telefone: '999999999');

  var lista = [c1, c2, c3, c4];
  print('Lista sem ordenação: $lista');
  print('--------------');
  lista.sort();
  // lista.sort((c1, c2) => c1.nome.compareTo(c2.nome));
  print('--------------');
  print('Lista com ordenação: $lista');
}
