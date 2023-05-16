void main() {
  print('Inicio Main');

  var f1 = Future.delayed(Duration(seconds: 2), () => 'f1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'f2');
  var f3 = Future.delayed(Duration(seconds: 3), () => 'f3');
  var f4 = Future.delayed(Duration(seconds: 1), () => 'f4');
  // mesmo sabendo que vai da erro, vai esperar a execução completa pra depois
  // apresentar o erro que nesse caso foi tratado pelo catchError
  var f5 = Future.delayed(
      Duration(seconds: 1), () => Future.error('Erro na execução'));

  // mostra a data no exato momento
  print(DateTime.now().toIso8601String());

  // eagerError: true -> não aguarda a execução de todas as funcões em caso de erro
  // cleanUp:(){} -> só é executado caso algum Future apresente erro, mostra o resultado
  // na ordem de execução.
  Future.wait(
    [f1, f2, f3, f4, f5],
    eagerError: true,
    cleanUp: (successValue) {
      print('completou $successValue');
    },
  ).then((arrayValues) {
    print(DateTime.now().toIso8601String());
    print(arrayValues[0]);
    print(arrayValues[1]);
    print(arrayValues[3]);
    print(arrayValues);
  }).catchError((error) {
    print(DateTime.now().toIso8601String());
    print(error);
  });

  print('Final Main');
}
