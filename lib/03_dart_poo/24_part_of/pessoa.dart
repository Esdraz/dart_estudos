// ignore_for_file: public_member_api_docs, sort_constructors_first

// part of faz um merge dos arquivos em tempo de compilação
// informa que a classe Endereco e Cpf fazem parte de Pessoa
// o arquivo que vai compor a classe tem que ta sempre depois de todos os imports
part 'cpf.dart';
part 'endereco.dart';

class Pessoa {
  String? nome;

  _Endereco endereco = _Endereco();
  Cpf cpf = Cpf();
}
