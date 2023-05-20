import 'somas/soma.dart' as soma;
import 'somas_nova/soma.dart' as nova_soma;
// import 'package:dart_estudos/02_dart_funcoes_colecoes/07_imports/somas/soma.dart';

void main() {
  // usando o aliase do import de soma
  var totalDoubles = soma.somaDoubles(10.5, 20.6);
  // usando o aliase do import nova_soma
  var totalInteiros = nova_soma.somaInteiros(20, 40);

  print('Total soma doubles: $totalDoubles');
  print('Total soma inteiros: $totalInteiros');
}
