void main() {
  print('Inicio Main');

  var f1 = Future.delayed(Duration(seconds: 1), () => 'f1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'f2');
  var f3 = Future.delayed(Duration(seconds: 3), () => 'f3');
  var f4 = Future.delayed(Duration(seconds: 1), () => 'f4');
  // mesmo sabendo que vai da erro, vai esperar a execução completa pra depois
  // apresentar o erro que nesse caso foi tratado pelo catchError
  var f5 = Future.delayed(
      Duration(seconds: 1), () => Future.error('Erro na execução'));

  // mostra a data no exato momento
  print(DateTime.now().toIso8601String());
  Future.wait([f1, f2, f3, f4, f5]).then((arrayValues) {
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
