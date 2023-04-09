import 'cachorro.dart';

void main() {
  var cachorro = Cachorro(idade: 2);
  cachorro.nome = 'Oliver';
  cachorro.tamanho = 'Medio';
  print(cachorro.calcularIdadeHumana());
  print(cachorro.recuperarIdade());
  print('''
    Cachorro:
      Nome: ${cachorro.nome}
      Tamanho: ${cachorro.tamanho}
      Idade: ${cachorro.idade}
      Idade Humana: ${cachorro.calcularIdadeHumana()}
''');
}
