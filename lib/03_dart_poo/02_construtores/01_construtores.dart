import 'package:dart_estudos/03_dart_poo/02_construtores/pessoa.dart';

void main() {
  // var pessoa = Pessoa('Jose',  22, 'Masculino');

  // var pessoa = Pessoa(
  //   nomeConstruct: 'Jose',
  //   idadeConstruct: 25,
  //   sexoConstruct: 'Masculino',
  // );
  // print(pessoa.nome);

  var pessoa = Pessoa(
    nome: 'Jose',
    idade: 25,
    sexo: 'Masculino',
  );
  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.sexo);

  // Construtores nomeados
  Pessoa.semNome(idade: 30, sexo: 'Feminino');

  // Construtor Factory
  var pessoaFabrica = Pessoa.fabrica('Francisco Sousa');
}
