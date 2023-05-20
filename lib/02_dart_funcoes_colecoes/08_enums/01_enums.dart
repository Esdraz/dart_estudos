void main() {
  // const cor = 'vermelho';
  var cor = Cores.vermelho;

  if (cor == Cores.vermelho) {}

  // transformando a string azul em um enum Cores.azul
  // antes na versao 2.15
  var azul = 'azul';
  var corAzul = Cores.values.where((cor) => cor.toString() == 'Cores.$azul');
  print(corAzul);

  //2.15+
  print('=== versão 2.15+ ===');
  print('cor: ${Cores.azul.name}');
  var corAzulNovaVersao = Cores.values.byName(azul);
  print('conversão: $corAzulNovaVersao');

  // versão antiga - converter em map (usa o indice como chave ex. 0: Cores.azul)
  var coresMap = Cores.values.asMap();
  print(coresMap);

  // versão 2.15+ - converter em map (usa a cor como chave ex. azul: Cores.azul)
  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);

  var corAzulPeloMap = coresNameMap[azul];
  print(corAzulPeloMap);

  //! byName gera um excessão ao buscar por um valor inexistente no enum
  // Cores.values.byName('branco');

  // utilizando o map, caso não exista o valor no enum é retornado um null
  var corBranco = coresNameMap['branco'];
  print(corBranco);
}

enum Cores { azul, vermelho, laranja, verde, preto }
