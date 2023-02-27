void main() {
  // <int> = generics -> garante que os tipos de dados com qual estamos trabalhando
  // sejam o que estamos esperando.
  List<int> listaNumeros = [1, 2, 3];

  var listaNumeros2 = [1, 2, 3];

  // lista de Strings
  List<String> listaNomes = ['Maria', 'Tereza', 'Alan'];
  var listaNomes1 = ['Maria', 'Tereza', 'Alan'];

  // declarando lista vazia
  List<int> listaSemDados = [];
  var listaSemDados1 = [];

  // forma correta, inferir o tipo antes da lista
  var listaSemDados2 = <int>[];

  List<String> listaSemDadosNomes = [];

  // forma errada de inicializar uma lista vazia de Strings
  var listaSemDadosNomes1 = [];

  var listaSemDadosNomes2 = <String>[];
}
