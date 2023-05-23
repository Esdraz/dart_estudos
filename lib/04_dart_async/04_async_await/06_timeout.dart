import 'dart:async';

Future<void> main() async {
  // final aguardando = inserindoAlgoBemLento();
  print(DateTime.now().toIso8601String());

  //? com o .timeout()
  // .timeout() -> informa o tempo que o futuro leva para ser executado apresentando
  // uma mensagem caso seja superior ao tempo setado.
  // aguardando.timeout(Duration(seconds: 1)).catchError((erro) {
  //   print('Terminou com erro: $erro');
  // });

  //? com o onTimeout:
  // aguardando.timeout(
  //   Duration(seconds: 1),
  //   onTimeout: () {
  //     print('terminou o timeout');
  //   },
  // ).then((value) {
  //   print('Terminou a execução');
  // }).catchError((erro) {
  //   print('Terminou com erro: $erro');
  // });

  //? com o try-catch
  try {
    final aguardando =
        await inserindoAlgoBemLento().timeout(Duration(seconds: 1));
  } on TimeoutException catch (e) {
    print('finalizou com erro $e');
  }
}

Future<void> inserindoAlgoBemLento() {
  return Future.delayed(Duration(seconds: 3), () {
    print('Terminou o insert');
    print(DateTime.now().toIso8601String());
  });
}
