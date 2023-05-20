void main() {
  // func1 passa o valor atraves do then para a func2 que por sua vez passa o
  // valor para o then e por fim para a função print (callback)
  func1().then((value) {
    func2(value).then((value) => print('1: $value'));
  });

  // Future é uma promisse
  // chamada em cadeia
  func1().then((value) => func2(value)).then((value) => print('2: $value'));

  var fut1 = func1();
  var fut2 = fut1.then((value) => func2(value));
  fut2.then((value) => print(value));

  // cada chamada do then retorna um novo future
  print(fut1.hashCode);
  print(fut2.hashCode);
}

Future<String> func1() {
  return Future.delayed(Duration(seconds: 1), () => 'Parametro 1');
}

Future<String> func2(String parametro) {
  return Future.value('Parametro recebido e processado: $parametro');
}
