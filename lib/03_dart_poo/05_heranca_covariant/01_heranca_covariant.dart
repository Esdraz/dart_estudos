import 'package:dart_estudos/03_dart_poo/05_heranca_covariant/banana.dart';
import 'package:dart_estudos/03_dart_poo/05_heranca_covariant/fruta.dart';
import 'package:dart_estudos/03_dart_poo/05_heranca_covariant/humano.dart';
import 'package:dart_estudos/03_dart_poo/05_heranca_covariant/macaco.dart';

void main() {
  var humano = Humano();
  humano.comer(Fruta());

  var macaco = Macaco();
  macaco.comer(Banana('nanica'));
}
