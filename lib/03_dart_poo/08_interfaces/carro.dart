// métodos implementados = classe abstrata
abstract class CarroClasseAbstrata {
  void velocidadeMaxima() {}
}

// métodos não implementados = interface
// toda classe tem caracteristicas e comportamentos
abstract class Carro {
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}
