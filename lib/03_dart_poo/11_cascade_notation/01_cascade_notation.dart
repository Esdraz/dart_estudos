void main() {
  // cascade notation '..' logo após a instancia
  // var pessoa = Pessoa()
  Pessoa()
    ..nome = 'Francisco'
    ..email = 'francisco@gmail.com'
    ..site = 'fsousa.com.br'
    ..printPessoa();

  // pessoa.nome = 'Francisco';
  // pessoa.email = 'francisco@gmail.com';
  // pessoa.site = 'fsousa.com.br';

  var mapa = <String, String>{}
    ..putIfAbsent('nome', () => 'Francisco')
    ..putIfAbsent('email', () => 'null')
    ..putIfAbsent('site', () => 'http://francisco.com');

  mapa.forEach(
    (key, value) => print('$key -> $value'),
  );
  print('');

  // print('''
  //   Pessoa:
  //     Nome: ${pessoa.nome}
  //     Email: ${pessoa.email}
  //     Site: ${pessoa.site}
  // ''');
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() {
    print('''
      Pessoa:
        Nome: $nome
        Email: $email
        Site: $site
    ''');
  }
}
