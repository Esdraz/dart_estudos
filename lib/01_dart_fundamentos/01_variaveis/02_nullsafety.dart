// '?' informa que o tipo é nulo mas queremos forçar a utilização dessa forma
String? nomeCompletoSuperior;

// variável precisa ser iniciada ou receber o operador ?, dessa forma daria erro.
//! String nomeSuperior;

String nomeSuperiorOpc = 'Pedro';

void main() {
  String nomeCompleto;
  String? nomeCompletoOpc;
  int num1;
  int num2;

  // pode ser inicializada posteriormente por está no mesmo escopo da função
  // nomeCompleto = 'Francisco Sousa';

  nomeCompletoOpc = 'Maria Silva';

  // inicinado a variável sup.
  nomeCompletoSuperior = 'Jose da Silva';

  // daria erro, pois a variável nomeCompleto é nula
  //! print(nomeCompleto.length);

  print(nomeCompletoOpc.length);

  // Gera erro, pois a variável pode ser nula
  // print(nomeCompletoSuperior.length);

  // '!' informa o compilador que vamos lidar com o valor recebido pela variável
  // e que ele não precisa verificar se vai ser nulo ou não (pode causa problemas)
  // funciona dessa forma, porém se não for passado um valor para variável
  // ira causar erro na compilação
  print(nomeCompletoSuperior!.length);

  // funciona, pois a varíavel superior foi inicializada na criação
  print(nomeSuperiorOpc.length);
}
