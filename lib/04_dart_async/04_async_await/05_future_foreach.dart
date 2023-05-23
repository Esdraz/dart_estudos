Future<void> main() async {
  print('<--- Inicio --->');
  final nomes = ['Pedro', 'Jose', 'Francisco', 'Maria', 'Samantha'];

  //! forEach nunca deve ser utilizado!!!
  // o forEach não respeita o await
  // nomes.forEach((nome) async {
  //   final saudacaoNome = await saudacao(nome);
  //   print(saudacaoNome);
  // });

  // o forEach não respeita o await
  // nomes.forEach(tratarSaudacao);

  // forma correta, de percorrer um loop num processo assíncrono
  // for (var nome in nomes) {
  //   await tratarSaudacao(nome);
  // }

  // também evitar utilizar o Future.forEach
  // await Future.forEach(nomes, (nome) async {
  //   await tratarSaudacao(nome);
  // });

  final nomesFuture = nomes.map((nome) => saudacao(nome)).toList();

  // Future.wait é interessante utilizar porque ele espera todas as respostas de uma vez
  final nomesProcessados = await Future.wait(nomesFuture);

  print(nomesProcessados);

  print('<--- Fim --->');
}

// o forEach não respeita o await
Future<void> tratarSaudacao(String nome) async {
  final saudacaoNome = await saudacao(nome);
  print(saudacaoNome);
}

Future<String> saudacao(String nome) async {
  print('>> Inicio saudação $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('<< Fim saudação $nome...');
    return 'Olá, $nome!';
  });
}
