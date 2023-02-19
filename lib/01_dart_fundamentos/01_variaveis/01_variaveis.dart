void main() {
  int idade = 31;
  double precoProduto = 22.50;

  // num => supertipo de int e double, recebe qualquer um dos 2 valores.
  num numero1 = 1;
  num numero2 = 1.5;

  String nome = 'Francisco';

  bool maiorDeIdade = true;

  dynamic numero3 = 5;
  numero3 = 12.2;
  numero3 = 'agora virei uma String';

  var numero4 = 10;
  numero4 = 5;
  // numero4 = 15.2; - Essa atribuição geraria um erro...

  var numero5 = 20.5;
  var sobrenome = 'Sousa';
}
