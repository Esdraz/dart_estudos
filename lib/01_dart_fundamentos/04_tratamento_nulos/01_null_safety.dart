String? nomeSuperior;

void main() {
  String nome = '';

  // String? => variável aceita nulo
  String? nomeNulo;

  if (nomeNulo != null) {
    nomeNulo.isEmpty;
  }

  nome.isEmpty;

  var nomeLocal = nomeSuperior;
  if (nomeLocal != null) {
    nomeLocal.isEmpty;
  }

  nomeSuperior = '';

  // nomeSuperior! => desativa a verificação de nulo
  nomeSuperior!.isEmpty;
}
