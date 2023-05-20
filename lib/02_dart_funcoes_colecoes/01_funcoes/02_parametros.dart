void main() {
  // parametros obrigatorios por default
  print('A soma de 10 + 10 = ${somaInteiros(10, 10)}');

  // parametros nomeados sao nullables por default e podem ser promovidos para
  // non-null com checagem de null
  print('A soma de 10.2 + 10.2 é ${somaDoubles(num1: 10.2, num2: 10.2)}');

  // não precisa passar os parametros nomeados na ordem que foram criados
  print('A soma de 10.2 + 10.2 é ${somaDoubles(num2: 10.2, num1: 10.2)}');

  somaDoublesObrigatorios(num1: 5.2, num2: 10.2);

  // o parametro do num1 aceita nulo
  somaDoublesObrigatorios2(num1: null, num2: 10.1);

  // parametros com valor default caso não inseridos na chamada
  print('Chamado do parametro Default: ${somaDoublesDefault()}');
  print('Chamado do parametro Default: ${somaDoublesDefault(num1: 10)}');

  // parametro opcional
  // se passar parametro tem que ser na sequencia
  somaIntOpcional();
  somaIntOpcional(1);
  somaIntOpcional(1, 10);

  // os parametros opcionais e nomeados tem que ser os ultimos na função
  parametrosNormaisComNomeados(1, nome: 'Francisco', idade: 31);
  parametrosNormaisComNomeados2(10, 'Francisco');
}

int somaInteiros(int num1, int num2) {
  return num1 + num2;
}

double somaDoubles({double? num1, double? num2}) {
  if (num1 != null && num2 != null) {
    return num1 + num2;
  } else {
    return 0.0;
  }
}

double somaDoublesObrigatorios({required double num1, required double num2}) {
  return num1 + num2;
}

double somaDoublesObrigatorios2({required double? num1, required double num2}) {
  num1 ??= 0; //se nulo num1 = 0
  return num1 + num2;
}

double somaDoublesDefault({double num1 = 0, double num2 = 0}) {
  return num1 + num2;
}

int somaIntOpcional([int num1 = 0, int num2 = 0]) {
  return num1 + num2;
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}
void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]) {}
