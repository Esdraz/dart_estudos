void main() {
  // lista []
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(2);
  numerosLista.add(1);
  print(numerosLista);

  // sets {}
  // sets não permite valores duplicados
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(2);
  numerosSet.add(1);
  print(numerosSet);

  print('.toSet');
  print(numerosLista.toSet());

  numerosSet.forEach(print);

  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};

  print('.difference');
  // itens que tem na lista 1 e não tem na lista 2
  print(numeros1.difference(numeros2));
  // itens que tem na lista 2 e não tem na lista 1
  print(numeros2.difference(numeros1));

  print('.union');
  // justa as duas listas (sets) sem duplicar os números
  print(numeros1.union(numeros2));

  print('.intercection');
  // mostra os itens que são iguais em ambas as listas
  print(numeros1.intersection(numeros2));

  var nomes1 = {'Francisco', 'Pedro', 'Maria'};
  var nomes2 = {'Francisco', 'Paulo', 'Ana'};
  print(nomes1.intersection(nomes2));

  print('.lookup');
  // busca um valor em uma lista e retorna, caso não tenha retorna null
  print(numeros1.lookup(99));
  // print(numeros1.lookup('Francisco'));
  print(nomes1.lookup('Francisco'));

  print('.elementAt');
  // busca por indice em sets
  print(numeros1.elementAt(2));
}
