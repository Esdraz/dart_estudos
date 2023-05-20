class Pessoa {
  final String nome;
  final int idade;

  // as variáveis precisam ser final para poder criar um construtor do tipo const
  const Pessoa({
    required this.nome,
    required this.idade,
  });
}
