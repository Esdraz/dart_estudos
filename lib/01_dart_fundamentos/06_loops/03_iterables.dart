void main() {
  var numeros = List.generate(10, (index) => index);

  // forma padrão
  // for (var i = 0; i < numeros.length; i++) {
  //   if (i == 5) {
  //     continue;
  //   }
  //   print(numeros[i]);
  // }

  // iterable .where filtrando todos os números diferentes de 5 e .forEach
  // imprimindo esses numeros
  //! não utilizar .forEach dessa forma em requisições asyncronas
  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));

  // .toList converte o iterable para lista
  final numerosAte6 = numeros
      .takeWhile((numero) => numero < 7)
      .where((numero) => numero != 5)
      .toList();
  print(numeros);
  print(numerosAte6);

  // acessar elemento no index X de um iterable
  print(numerosAte6.elementAt(2));

  // .skipWhile pula os numeros que são menores que 6 do filtro e guarda somemente;
  // os numeros do 6 em diante.
  final numerosRemoverAte5 = numeros.skipWhile((numero) => numero < 6).toList();
  print(numerosRemoverAte5);

  // se nome for diferente de 'Maria' não imprimi, se for igual imprimi Maria
  // e todos os seguintes 'Tereza' e 'Sandra'.
  var nomes = ['Pedro', 'Francisco', 'Maria', 'Tereza', 'Sandra'];
  var nomeSkip = nomes.skipWhile((nome) {
    if (nome != 'Maria') {
      return true;
    } else {
      return false;
    }
  }).toList();
  print(nomeSkip);

  // .map responsavel por transformar uma lista em outra lista
  // serve para transformar e modificar conforme a necessidade.
  // é uma boa pratica transformar de volta para lista com o .toList()
  var numeroStrList = numeros.map((numero) {
    return 'Nº $numero';
  }).toList();
  print(numeroStrList);
}
