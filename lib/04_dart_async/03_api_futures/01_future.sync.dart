void main() {
  print('Inicio Main');
  // a função sync executa a função dentro do Future no instance que percorre ele,
  // mas o then só é executado após finalizar o event loop
  Future<String>.sync(() {
    print('Funcao Future executada');
    return 'Resultado Future';
  }).then(print);

  print('Fim Main');
}
