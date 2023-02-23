String? nome;

void main() {
  var sobrenome = 'Sousa';
  // or operator ?? (nome for igual a null, nome recebe 'Francisco')
  var nomeCompleto = (nome ?? 'Francisco ') + sobrenome;
  print(nomeCompleto);

  String? nomeCompleto2;
  // if nomeCompleto2 for nulo imprimi 'Francisco Sousa'
  print(nomeCompleto2 ?? 'Francisco Sousa');
}
