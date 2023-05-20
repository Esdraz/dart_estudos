void main() {
  final nome = metodoAssincronoSemAsync();
  final nome2 = metodoAssincrono();

  print(nome2);

  nome.then(print).catchError(print);
  metodoAssincronoVoid().whenComplete(() => print('Finalizou o void'));
}

Future<String> metodoAssincronoSemAsync() {
  return Future.value('Francisco');
}

// async -> envelopa a funcao informando que vai retornar um Future.value()
Future<String> metodoAssincrono() async {
  return 'Francisco S';
}

Future<void> metodoAssincronoVoid() async {}
