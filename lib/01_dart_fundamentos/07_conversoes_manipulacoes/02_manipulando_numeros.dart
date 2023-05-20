void main() {
  final idade = 31;

  print('Sua idade é $idade');

  final valor = -20;

  if (valor.isNegative) {
    print(valor);
  }

  final valorDouble = 10.65;

  print(valorDouble.round());
  print(valorDouble.roundToDouble());

  final valorCertoString = '31';
  final valorErradoString = 'teste';

  // .parse() tenta passar a string pra num, caso não seja possível retorna excessão
  final valorInt = int.parse(valorCertoString);

  // .tryParse() tentar converter, caso não consiga retorna um null
  final valorInt1 = int.tryParse(valorErradoString);
  print(valorInt);
  print(valorInt1);

  final precoCamiseta = 30.12355;

  // .toStringAsFixed(x) x = quantidade de casas decimais.
  print(precoCamiseta.toStringAsFixed(2));
}
