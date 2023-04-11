import 'anestesista.dart';

class ResidenteAnestesia extends Anestesista {
  @override
  void operar() {
    super.operar();
    print('limpar e desmontar os equipamentos');
  }
}
