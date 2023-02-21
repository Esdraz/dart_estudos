void main() {
  var nomeCompleto = 'Jose Silva';
  print(nomeCompleto);

  nomeCompleto = 'Maria Paula';
  print(nomeCompleto);

  // modificador 'final' não deixa alterar a variável após ser inicializada
  // variáveis finais são definidas em tempo de execução (runtime)
  // essa caracteristica é chamada de imutabilidade
  final nomeCompletoFinal = 'Ana Paula';
  print(nomeCompletoFinal);

  final nomeCompletoFinal1;
  nomeCompletoFinal1 = nomeCompleto;
  print(nomeCompletoFinal1);

  // const não aceita variável sem inicialização
  // variáveis const são definidas em tempo de compilação
  //! const nomeCompletoConst;

  const nomeCompletoConst = 'Constantine';
  print(nomeCompletoConst);

  // uma const só aceita ser inicializada com um valor definido ou com uma
  // outra const ja inicializada
  const nomeCompletoConst1 = nomeCompletoConst;
  print(nomeCompletoConst1);

  // Não aceita ser reatribuida, gera erro na compilação
  //! nomeCompletoFinal = 'Aparecida';

  final nomeCompletoFinal2;

  nomeCompletoFinal2 = 'Aparecida Maria';
  print(nomeCompletoFinal2);
}
