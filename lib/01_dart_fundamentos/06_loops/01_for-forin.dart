void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Francisco', 'Jose', 'Pedro', 'Maria', 'Ana'];

  print('imprimindo numeros com for tradicional');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('imprimindo nomes com for tradicional');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  // for-in não tem opção de tratamento, pois não conseguimos acessar um indice x
  print('imprimindo numeros com for-in');
  for (var numero in numeros) {
    print(numero);
  }

  print('imprimindo nomes com for-in');
  for (var nome in nomes) {
    print(nome);
  }

  print('imprimindo nomes com for convencional e break');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Pedro') {
      break;
    }
  }

  print('imprimindo nomes com for-in e break');
  for (var nome in nomes) {
    print(nome);
    if (nome == 'Pedro') {
      break;
    }
  }

  print('imprimindo nomes com for convencional com continue');
  // se i == 1 (Jose) ou i == 3 (Maria) não imprime e paassa para o próximo
  // inde         0           1       2       3        4
  // nomes = ['Francisco', 'Jose', 'Pedro', 'Maria', 'Ana'];
  for (var i = 0; i < nomes.length; i++) {
    if (i == 1 || i == 3) {
      continue;
    }
    print(nomes[i]);
  }
}
