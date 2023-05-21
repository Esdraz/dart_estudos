Future<void> main() async {
  print('Inicio');
  // forma correta: utilizando um try...catch...
  try {
    final id = await buscarId();
    final nome = await buscarNome(id);

    // forma menos utilizada para tratar um erro: utilizando um catchError
    // final nome = await buscarNome(id).catchError((error) {
    //   print('Aconteceu um erro...');
    //   return 'Erro ao buscar nome!';
    // });

    print('O nome do usuário é: $nome');
    print('Fim');
  } catch (e) {
    print('Ocorreu um erro!!');
  }
}

Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async {
  throw Exception();
  // return 'Francisco ($id)';
}
