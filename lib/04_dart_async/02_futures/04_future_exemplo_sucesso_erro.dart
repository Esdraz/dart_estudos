void main() {
  /* print('Levando o carro para o mecanico');
  Future<int>(() {
    // função assincrona que vai fazer o orçamento da manutenção do nosso carro
    // tio '~' serve pra fazer um truncate na divisão, para evitar valor double
    return 10 ~/ 0;
  }).then((valorOrcamento) {
    // função de retorno com sucesso
    print('O orçamento para arrumar o carro é de $valorOrcamento mil.');
  }).catchError((error) {
    // função de retorno com erro
    print('O carro não tem reparro!');

    // função que sempre sera executada no final do procedimento
  }).whenComplete(() => print('Processo de reparo finalizado!'));

  print('Saindo da mecanica');

  Future<int>(() {
    return 10 ~/ 2;
  }).then((value) => print('Valor calculado é $value'));

  Future<int>(() {
    return 10 ~/ 0;
  }).then((value) => print('Valor calculado é $value'), onError: (error) {
    print('ocorreu um erro $error');
    throw Exception('outro erro');
    //  so cai o erro no catchError caso tenha mais de um erro
  }).catchError((error) {
    print('ocorreu um erro no catchError $error');
  }); */

  Future<int>(() {
    // throw Exception nesse caso gera erro no segundo catchError
    // throw Exception('x');
    return 10 ~/ 0;
  }).then((value) => print('Valor calculado é $value')).catchError(
    (error) {
      print('ocorreu um erro no catchError $error');
    },
    test: (error) => error is UnsupportedError,
  ).catchError(
    (error) {
      print('ocorreu um erro no catchError2 $error');
    },
  );
}
