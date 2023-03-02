void main() {
  //     inicio ; condição ; incremento
  // for (var i = 0; i < count; i++) {}

  var numero = 0;
  print('while convencional');
  while (numero <= 10) {
    print(numero);
    numero++;
  }

  // while só sera executa se a condição for verdadeira
  var indice = 0;
  print('while não sera executado');
  while (indice > 0) {
    print(indice);
  }

  // do-while será executado pelo menos uma vez, mesmo que a condição seja falsa
  print('do while será executado');
  do {
    print(indice);
  } while (indice > 0);
}
