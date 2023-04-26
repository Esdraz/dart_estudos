class Cliente {
  String? nome;
  String? cpf;

  String? razaoSocial;
  String? cnpj;

  Cliente({
    String? nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
  })  : nome = nome,
        assert(
            // validar se é pessoa física
            (cpf != null)
                ? nome != null && razaoSocial == null && cnpj == null
                : true,
            'Você enviou cpf junto com cnpj'),
        assert(
            // validar se é pessoa jurídica
            (cnpj != null)
                ? razaoSocial != null && nome == null && cpf == null
                : true,
            'Você enviou cnpj junto com cpf');
}
