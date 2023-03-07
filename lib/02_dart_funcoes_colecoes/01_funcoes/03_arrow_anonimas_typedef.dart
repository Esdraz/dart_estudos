void main() {
  // funcoes arrow
  // funcoes anonimas
  // typedef

  var nome = '';
  var idade = 1;
  // função anonima (){}
  funcaoQualquer() {
    print('chamou a funcao da variavel');
    return '2000';
  }

  print(funcaoQualquer());

  print(somaInteiros(10, 10));

  print('iniciando a chamada');
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('nome veio vazio');
    } else {
      print(nome);
    }
  });
  print('finalizando chamada');
}

// funcoes tem 3 partes:
// 1 tipo de retorno
// 2 nome
// 3 parametros (normais, nomeados e opcionais)
// => funcoes arrow, funçao em uma só linha
int somaInteiros(int num1, int num2) => num1 + num2;
void somaInteirosVoid(int num1, int num2) => num1 + num2;

void chamarUmaFuncaoDeUmParametro(funcaoQueRecebeNome funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Francisco Sousa';
  print('finalizando a funcao -> chamarUmaFuncaoDeUmParametro');
  print('invocando funcao funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

// cria uma aliase para uma função
// usado em funções que recebe outra função como parametro
typedef funcaoQueRecebeNome = void Function(String nome);
