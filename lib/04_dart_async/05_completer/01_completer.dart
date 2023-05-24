import 'dart:async';

// completer serve para poder controlar os retornos com sucesso ou erro,
// assim manipulando o Future conforme a condição que for proposta.
main() async {
  // buscarAlgo(2)
  //     .then((value) => print('Mensagem: $value'))
  //     .catchError((error) => print('Mensagem: $error'));

  try {
    final mensagem = await buscarAlgo(0);
    print('Mensagem: $mensagem');
  } catch (e, s) {
    print(e);
    print(s);
  }
}

Future<String> buscarAlgo(int numero) {
  final completer = Completer<String>();

  Timer(Duration(seconds: 2), () {
    if (numero == 0) {
      completer.complete('Numero enviado com sucesso');
    } else {
      completer.completeError('Numero enviado com erro', StackTrace.current);
    }
  });

  return completer.future;
}
