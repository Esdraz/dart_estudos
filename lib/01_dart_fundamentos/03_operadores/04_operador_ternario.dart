void main() {
  final idade = 12;

  if (idade >= 18) {
    print('maior de idade');
  } else {
    print('menor de idade');
  }
  // operador ternário é uma forma compacta de fazer um if - else
  // aconselhável utilizar pra checagens simples
  // logica ? retorna se true : retorna se false
  final maiorDeIdade = (idade >= 18 ? true : false);

  print('É maior de idade: $maiorDeIdade');
}
