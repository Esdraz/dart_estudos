class Cliente {
  // late - att inicializado depois (late sobresceve quaisquer regras ex. do final)
  late final String nome;
  String? idade;
  Cliente({required String nome});
}
