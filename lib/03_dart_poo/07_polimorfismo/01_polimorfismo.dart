import 'package:dart_estudos/03_dart_poo/07_polimorfismo/pediatra.dart';
import 'package:dart_estudos/03_dart_poo/07_polimorfismo/residente_anestesista.dart';

import 'medico.dart';
import 'obstetra.dart';

void main() {
  // parto
  var medicos = <Medico>[
    ResidenteAnestesia(),
    Obstetra(),
    Pediatra(),
  ];

  // realizar parto
  for (var medico in medicos) {
    medico.operar();
  }
}
