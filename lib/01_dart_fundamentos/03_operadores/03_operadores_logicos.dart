void main() {
  // Operadores Lógicos
  // operador && (and) => só é verdadeiro se ambos forem TRUE.

  final idade = 18;
  final sexo = 'M';

  if (idade >= 18 && sexo == 'M') {
    print('pode entrar');
  } else {
    print('não pode entrar');
  }

  // operador || (or) => só é falso se ambos forem FALSE.

  if (idade == 8 || sexo == 'F') {
    print('pode entrar');
  } else {
    print('não pode entrar');
  }

  // operador ! (not) => inverte os valores, false passa a ser true e vice versa.

  if (!(sexo == 'M')) {
    print('pode entrar');
  } else {
    print('não pode entrar');
  }

  print(!false);
}
