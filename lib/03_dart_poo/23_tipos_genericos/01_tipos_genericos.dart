void main() {
  List<int> numeros = [1, 2, 3, 4];
  numeros.add(5);

  Map<String, int> mapa = {};

  final caixa = Caixa<Bola>();
  caixa.adicionar(Bola());
  caixa.getItem();
  print(caixa.alturaItem());

  final caixaBoneca = Caixa<Boneca>();
  caixaBoneca.adicionar(Boneca());
  caixaBoneca.getItem();
  print(caixaBoneca.alturaItem());

  final caixaTelefone = Caixa<Telefone>();
  caixaTelefone.adicionar(Telefone());
  caixaTelefone.getItem();
  print(caixaTelefone.alturaItem());
}

class Caixa<I extends Item> {
  I? _item;

  void adicionar(I item) {
    _item = item;
  }

  I? getItem() {
    return _item;
  }

  double alturaItem() {
    return _item?.altura() ?? 0;
  }
}

abstract class Item {
  double altura();
}

class Bola extends Item {
  @override
  double altura() {
    return 20.0;
  }
}

class Boneca extends Item {
  @override
  double altura() {
    return 40.0;
  }
}

class Telefone extends Item {
  @override
  double altura() {
    return 10.0;
  }
}
