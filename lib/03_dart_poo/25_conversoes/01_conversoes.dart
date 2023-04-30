// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_estudos/03_dart_poo/25_conversoes/aluno.dart';
import 'package:dart_estudos/03_dart_poo/25_conversoes/curso.dart';

void main() {
  var frutas = [
    Fruta('banana'),
    Fruta('abacaxi'),
    Fruta('laranja'),
  ];

  var frutasMap = [
    {'nome': 'banana'},
    {'nome': 'abacaxi'},
    {'nome': 'laranja'},
  ];

  // List<Suco> sucos = [];
  // for (var fruta in frutas) {
  //   final suco = Suco(sabor: fruta.nome);
  //   sucos.add(suco);
  // }

  // varrendo a lista usando o metodo map
  // .tolist para transformar o interable em lista após a conversão

  // var sucos = frutas.map((fruta) {
  //   return Suco(sabor: fruta.nome);
  // }).toList();
  var sucos = frutas.map((fruta) => Suco(sabor: fruta.nome)).toList();
  var sucos2 =
      frutasMap.map((frutaMap) => Suco(sabor: frutaMap['nome'] ?? 'Sem sabor'));

  print(sucos);
  print(sucos2);

  // Convertendo um map para map de Objetos
  var alunoAdf = <String, Object>{
    'nome': 'Francisco',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de Flutter',
      },
      {
        'nome': 'Imersão GetX',
        'descricao': 'Imersão em GetX',
      },
      {
        'nome': 'Imersão Código Limpo',
        'descricao': 'Imersão em Código Limpo',
      },
    ]
  };

  final cursosMap = alunoAdf['cursos'] as List<Map<String, String>>;
  final cursos = cursosMap.map((curso) {
    var nome = curso['nome'] as String;
    var descricao = curso['descricao'] as String;

    return Curso(nome: nome, descricao: descricao);
  }).toList();

  final nomeAluno = alunoAdf['nome'] as String;

  // O objeto curso precisa ser tranformado em uma lista (.toList), pois
  // o map retorna um iterable
  final aluno = Aluno(nome: nomeAluno, cursos: cursos);
  print(aluno);
}

class Suco {
  String sabor;
  Suco({
    required this.sabor,
  });

  @override
  String toString() => 'Suco sabor $sabor';
}

class Fruta {
  String nome;
  Fruta(this.nome);
}
