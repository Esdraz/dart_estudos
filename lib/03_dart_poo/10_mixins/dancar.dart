import 'artista.dart';

// só poder ser usado o mixin dancar se for Artista
mixin Dancar on Artista {
  String dancar() {
    return 'Dança Forró';
  }

  // @override
  // String habilidade() {
  //   return 'Dançar';
  // }
}
