void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  final listaSexoMasculino = [];
  final listaSexoFeminino = [];
  final listaIdade = [];
  var pessoaMaiorIdade = 0;
  String? nomePessoaMaiorIdade;

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  final listaPessoas = pessoas.toSet();
  print(listaPessoas);

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  for (var pessoa in listaPessoas) {
    final listaDadosPessoas = pessoa.split('|');
    final sexo = listaDadosPessoas[2].toLowerCase();
    final nome = listaDadosPessoas[0];
    final idade = int.tryParse(listaDadosPessoas[1]) ?? 0;

    if (sexo.startsWith('mas')) {
      listaSexoMasculino.add(nome);
    } else {
      listaSexoFeminino.add(nome);
    }

    if (idade > 18) {
      listaIdade.add(nome);
    }

    if (idade > pessoaMaiorIdade) {
      pessoaMaiorIdade = idade;
      nomePessoaMaiorIdade = nome;
    }
  }

  print('Quantidade de Pessoas por Sexo:');
  print('Sexo Masculino: ${listaSexoMasculino.length}');
  print('Nomes: $listaSexoMasculino');
  print('Sexo Feminino: ${listaSexoFeminino.length}');
  print('Nomes: $listaSexoFeminino');

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print('Pessoas maiores de 18 anos:');
  print(listaIdade);

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print('Pessoa mais velha: $nomePessoaMaiorIdade com $pessoaMaiorIdade anos');
}
