void main() {
  // os then encadeados são executados enquanto a função não apresentar erro
  // nesse caso o func2 está apresentando erro, logo, a func3 não será executada,
  // mas se usarmos a função onError: (){} podemos tratar o erro e retornar o passo
  // seguinte que será dado, nesse caso executar a func3.

  // resumindo: Em uma chamada em cadeia, pode-se tratar os erros usando somente
  // o catchError no final das cadeias, ou o onError ao longo da cadeia nas funções
  // necessárias.
  func1()
      .then((value) => func2())
      .then((value) => func3(), onError: (error) {
        print('Tratando erro da func2');
        return func3();
      })
      .then(print)
      .catchError((error) => print('Erro em alguma das chamadas'));
}

Future<String> func1() {
  print('func1');
  return Future.value('Fazendo algo func1');
}

Future<String> func2() {
  print('func2');
  // throw Exception();
  return Future.error('Fazendo algo func2');
}

Future<String> func3() {
  print('func3');
  return Future.value('Fazendo algo func3');
}
