class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  // construtor padrao - toda classe tem automaticamente
  // Pessoa();

  // pode receber 3 tipos de atributos:
  // () = obrigatorios
  // [] = opcionais
  // {} = nomeados - adicionar required antes do att. ex 'required String name'
  // Pessoa(
  //     {required String nomeConstruct,
  //     required int idadeConstruct,
  //     required String sexoConstruct,
  // }) {
  //   nome = nomeConstruct;
  //   idade = idadeConstruct;
  //   sexo = sexoConstruct;
  // }
  // Construtor padrao
  Pessoa({
    required this.nome,
    required this.idade,
    required this.sexo,
  });

  // Construtores nomeados
  Pessoa.semNome({
    required this.idade,
    required this.sexo,
  });

  Pessoa.vazia();

  // Construtor do tipo factory é utilizado quando temos uma regra de negocio
  // para a criaçao da classe
  factory Pessoa.fabrica(String nomeConstr) {
    var nome = '${nomeConstr}_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return Pessoa.vazia();
  }
}
