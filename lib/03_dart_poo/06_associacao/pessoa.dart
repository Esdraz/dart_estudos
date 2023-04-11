class Pessoa {
  String? nome;

  // Composição
  // Quando um atributo de associação é obrigatório nós chamados e composição
  Endereco endereco = Endereco();
  CPF cpf = CPF();

  // Agregação
  // Quando um atributo de asssociação não é obrigatório nós chamamos de agregação
  Telefone? telefone;
}

class CPF {}

class Telefone {}

class Endereco {}
