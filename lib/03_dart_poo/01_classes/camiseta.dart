// public
// private - ex. String? _cor; (underline torna privado)

// caracteristicas (atributos)
// comportamentos (metodos)

class Camiseta {
  // Atributos de instancia
  String? tamanho;
  String? _cor;
  String? marca;

  // Atributo de classe
  static const String nome = 'Camiseta';

  // Metodo de classe (metodo de classe só tem acesso a att de classe)
  static String recuperarNome() => nome;

  // metodos gets e sets de cor
  String? get cor => _cor;
  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Nao pode ser verde');
    } else {
      _cor = cor;
    }
  }

  // Funções dentro de classes são chamadas de métodos
  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }
}
