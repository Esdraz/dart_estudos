import 'package:dart_estudos/03_dart_poo/05_heranca_covariant/fruta.dart';
import 'package:dart_estudos/03_dart_poo/05_heranca_covariant/mamifero.dart';

class Humano extends Mamifero {
  @override
  void comer(covariant Fruta fruta) {}
}
