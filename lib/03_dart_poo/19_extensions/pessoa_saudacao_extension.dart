import 'pessoa.dart';

// extension da classe Pessoa
extension SaudacaoStringExtension on Pessoa {
  String saudacao() {
    return 'Olá $nome, bem vindo a academia do flutter!';
  }
}
