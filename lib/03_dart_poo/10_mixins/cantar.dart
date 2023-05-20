abstract class Cantar {
  String cantar() {
    return 'Canta Rock';
  }

  // cuidado ao sobrescrever metodos (foi sobrescrito o metodo de Artista)
  @override
  String habilidade() {
    return 'Cantar';
  }
}
