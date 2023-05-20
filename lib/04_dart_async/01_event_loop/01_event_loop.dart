import 'dart:async';

// Dart usa Single Thread - executa uma operação por vez
// Para gerenciar a execução de código o Dart usa o Event Loop que executa duas
// filas, a de Microtask (maior prioridade) e de Evento.

void main() {
  print('Inicio main');
  // executa o event atual e logo após a microtask que foi criada dentro do event
  Timer.run(() {
    scheduleMicrotask(() => print('Nova Microtask 1'));
    print('Event 1');
  });
  Timer.run(() => print('Event 2'));
  Timer.run(() => print('Event 3'));
  // Microtask tem mais prioridade que o event
  scheduleMicrotask(() => print('Microtask 1'));
  scheduleMicrotask(() => print('Microtask 2'));
  print('Fim main');
}
