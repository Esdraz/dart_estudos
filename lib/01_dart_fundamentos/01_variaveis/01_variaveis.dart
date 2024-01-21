void main() {
  int idade = 31;
  double precoProduto = 22.50;

  // num => supertipo de int e double, recebe qualquer um dos 2 valores.
  num numero1 = 1;
  num numero2 = 1.5;

  String nome = 'Francisco';

  bool maiorDeIdade = true;

  // dynamic recebe qualquer tipo de valor
  dynamic numero3 = 5;
  numero3 = 12.2;
  numero3 = 'agora virei uma String';
  numero3 = false;

  // Object recebe qualquer tipo de valor e é a classe básica para todos os objetos no dart, excert o null
  Object objetoQualquer = 1.2;
  objetoQualquer = 'que coisa não?';
  objetoQualquer = true;

  var numero4 = 10;
  numero4 = 5;
  // numero4 = 15.2; - Essa atribuição geraria um erro...

  var numero5 = 20.5;
  var sobrenome = 'Sousa';
}
