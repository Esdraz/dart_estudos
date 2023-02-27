void main() {
  final numeros = [1, 2, 3, 4];
  print(numeros);

  numeros.add(1);
  print(numeros);

  //  indice          0          1        2         3
  final nomes = ['Francisco', 'Pedro', 'Maria', 'Jessica'];
  print(nomes);

  // vai para o final da lista 'index 4'
  nomes.add('Savana');
  print(nomes);

  // add varios valores no final da lista
  nomes.addAll(['Carla', 'Marcia', 'Rafaela']);
  print(nomes);

  // imprimindo index especificos lista[num_index]
  print(nomes[0]);
  print(nomes[4]);

  // insert - add um valor no index X de uma lista
  nomes.insert(0, 'Alex');
  nomes.insert(3, 'Josefina');
  print(nomes);

  nomes.remove('Josefina');
  print(nomes);

  // if(nome == 'Alex') {return true;} else {return false;}
  nomes.removeWhere((nome) => nome == 'Alex');
  print(nomes);

  // print(nomes[0]); pode ser substituido por nomes.first
  print(nomes.first);

  // print(nomes.length - 1); pode ser substituido por nomes.last
  print(nomes.last);

  // buscar item, e finalizar ao encontrar o primeiro valor true
  print('Buscando o primeiro nome: ');
  var primeiroNome = nomes.firstWhere(
    (nome) {
      print(nome);
      if (nome == 'Jessica') {
        return true;
      } else {
        return false;
      }
    },
  );
  print(primeiroNome);

  // gerar valores na lista
  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  // gerando valores do tipo string
  final stringGerados = List.generate(10, (index) => 'Indice #${index + 1}');
  print(stringGerados);

  final repeticoes = List.filled(10, 'teste rep');
  print(repeticoes);

  final numerosGeradosParaCalculo = List.generate(100, (index) => index + 1);

  // 1 ... 100
  // 0 + 1 = 1
  // 1 + 2 = 3
  // 3 + 3 = 6...
  var soma = numerosGeradosParaCalculo.fold<int>(
      0, (previousValue, numero) => previousValue = previousValue + numero);
  print(soma);

  // Spred Operator (...) - juntar listas
  var listaNumerosSpredB = [4, 5, 6];
  var listaNumerosSpredA = [1, 2, 3, ...listaNumerosSpredB];
  print(listaNumerosSpredA);

  // Collection if
  var promocaoAtiva = true;
  var produtos = [
    'Cerveja',
    'Refrigerante',
    if (promocaoAtiva) 'Suco de Laranja'
  ];

  print(produtos);

  // Collection for
  var listaInts = [1, 2, 3];
  var listaStrings = ['#0', for (var i in listaInts) '#$i'];

  print(listaStrings);
}
