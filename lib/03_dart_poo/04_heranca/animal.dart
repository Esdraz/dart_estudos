abstract class Animal {
  String? nome;
  String? tamanho;
  final int idade;

  Animal({required this.idade});

  int recuperarIdade() {
    return idade;
  }

  int calcularIdadeHumana();
}
