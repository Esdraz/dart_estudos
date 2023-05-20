void main() {
  Future(() {
    // dart sempre retorna um future de sucesso ou erro (.value ou .error)
    return 'Valor X';
  }); // -> Incompleto, vai ser executado ainda

  Future.value(''); // -> Sucesso
  Future.error(''); // -> Erro
}

// quando adicionado o async o dart já sabe que tem que ser encapsulado em um .value
// Future<String> func1() async {
//   return 'Qualquer valor';
// }

Future<String> func1() {
  return Future.value('Qualquer valor');
}
