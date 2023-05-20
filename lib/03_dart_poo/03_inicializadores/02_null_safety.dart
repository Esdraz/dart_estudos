import 'package:dart_estudos/01_dart_fundamentos/04_tratamento_nulos/02_null_aware_operator.dart';

import 'cliente.dart';

// TOME MUITO CUIDADO COM O LATE E O ! (FORCE NON-NULL)
void main() {
  var cliente = Cliente(nome: 'Francisco');
  cliente.nome = 'Francisco';
  print(cliente.nome);
  // cliente.nome = 'Pedro';
  print(cliente.nome);

  print(cliente.idade?.toLowerCase() ?? 'idade não informada!');

  nome = 'Francisco S';
  print(nome);
  nome = 'Sousa';
}
