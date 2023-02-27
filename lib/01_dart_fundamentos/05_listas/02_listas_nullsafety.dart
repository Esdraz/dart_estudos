void main() {
  // '?' = nullable (aceita nulo)
  // sem nada (padrão) = non-null (não aceita nulo)

  // não aceita nulo
  var nomes = <String>[];

  // aceita nulo
  List<String>? nomesNulos;

  // lista e nem itens podem ser nulos
  List<String> nomesInternosNaoAceitaNulos = ['Francisco'];
  // omitindo tipo da lista
  var nomesInternosNaoAceitaNulos1 = ['Francisco'];

  // Lista não poder ser nula, mas itens internos podem ser nulos
  List<String?> nomesInternosAceitaNulos = ['Francisco', null, 'Jose', null];
  // omitindo o tipo da lista
  var nomesInternosAceitaNulos1 = <String?>['Francisco', null, 'Jose', null];

  // lista e itens podem ser nulos
  List<String?>? nomesListaAceitaNulos = null;

  // não precisa especificar o null
  List<String?>? nomesListaAceitaNulos1;
}
