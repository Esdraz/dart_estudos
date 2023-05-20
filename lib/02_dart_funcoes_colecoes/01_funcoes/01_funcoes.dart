/* 
  TipoDeRetorno nomeDaFuncao(TipoDoArgumento nomeDoArgumento, OutroTipo outroNomeDeArgumento){
    Aqui vai o corpo da função
  return tipoDeRetorno;
  }

  Ex.
  int somaInteiros(int num1, int num2) {
    print('Executando a soma de inteiros($num1, $num2):');
    final soma = num1 + num2;
  return soma;
  }
*/

void main() {
  final valorCalculado = somaInteiros(20, 30);

  print(valorCalculado);
}

int somaInteiros(int num1, int num2) {
  print('Executando a soma de inteiros($num1, $num2):');

  // se uma variável só serve para retornar um valor, a mesma pode ser anulada
  // e o valor pode ser adicionado diretamente no retorno da função
  // final soma = num1 + num2;
  // return soma;

  return num1 + num2;
}
