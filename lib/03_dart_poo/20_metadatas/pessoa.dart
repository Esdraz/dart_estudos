import 'package:dart_estudos/03_dart_poo/20_metadatas/fazer.dart';

@Fazer(
  quem: 'Francisco na classe',
  oque: 'tentando ler a anotação da classe',
)
class Pessoa {
  @Fazer(
    quem: 'Francisco no atributo',
    oque: 'tentando ler a anotacao no atributo',
  )
  String? nome;

  @Fazer(quem: 'Francisco no metodo', oque: 'tentando ler a anotação do metodo')
  void fazerAlgo() {}
}
