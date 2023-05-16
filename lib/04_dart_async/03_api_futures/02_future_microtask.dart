void main() {
  print('Inicio Main');

  Future<String>(() => 'Future Normal').then(print);
  // a microtask tem maior prioridade e sera executada antes
  Future<String>.microtask(() => Future.error('Erro ao Executar'))
      .then(print)
      .catchError(print);

  print('Fim Main');
}
