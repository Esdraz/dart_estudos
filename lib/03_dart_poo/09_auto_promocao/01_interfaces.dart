import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

// variaveis de tipo superior e atributos de classe
// nao sao auto promovidas para o tipo checado!!!
Carro golCarro2 = Gol();

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  // quando checamos se a variavel é(is) de um tipo caso ela seja, o dart
  // automaticamente converte essa instancia para a classe do tipo!!
  if (golCarro is Gol) {
    golCarro.tipoDeRodas();
  }

  // var tipoDeRodas = (gol as Gol).tipoDeRodas();
  // print('Tipos de Rodas: $tipoDeRodas');

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
}

void printarDadosDoCarro(Carro carro) {
  print('''
    Carro:
      Tipo: ${carro.runtimeType}
      Portas: ${carro.portas}
      Rodas: ${carro.rodas}
      Motor: ${carro.motor}
      Velocidade Máxima: ${carro.velocidadeMaxima()}
      Tipo de Rodas: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponível'}
  ''');
}
