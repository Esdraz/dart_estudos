// async encapsula a func para não precisar retornar um future.value()
// Future<int> buscarId() => Future.value(80);
Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async => 'Francisco ($id)';

// API de Futuro padrão
Future<String> buscarNomeUsuario() {
  return buscarId().then((id) {
    return buscarNome(id).then((nome) {
      return 'Usuario: $nome';
    });
  });
}

// API de Futuro com await
Future<String> buscarNomeUsuarioAwait() async {
  final id = await buscarId();
  final nome = await buscarNome(id);
  return 'Usuário: $nome';
}

// void main() {
//   print('Inicio');
//   buscarNomeUsuario().then(print);
//   print('Fim');
// }

// quando o Main é transformado em async ele perde a prioridade liberando o event
// loop e assim executado o código como se fosse 'sincrono'
Future<void> main() async {
  print('Inicio');
  final nomeUsuario = await buscarNomeUsuarioAwait();
  print(nomeUsuario);
  print('Fim');
}
