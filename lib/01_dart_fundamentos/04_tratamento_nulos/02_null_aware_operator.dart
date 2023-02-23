String? nome;

void main() {
  // usando operador ternário
  var nomeCompleto = (nome != null) ? nome! + ' Sousa' : 'Francisco Sousa';
  print(nomeCompleto);

  // fazendo checagem com if-else
  String nomeCompleto2;

  if (nome != null) {
    nomeCompleto2 = nome! + ' Sousa';
  } else {
    nomeCompleto2 = 'Francisco Sousa';
  }
  print(nomeCompleto2);

  // atribuindo valor var superior para var local e testando com if
  var nomeLocal = nome;
  if (nomeLocal == null) {
    nomeLocal = 'Francisco';
  }

  var nomeCompleto3 = nomeLocal + ' Sousa';
  print(nomeCompleto3);
}
