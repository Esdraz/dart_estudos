import 'dart:async';

Future<void> main() async {
  final usuario = UsuarioRepository();
  usuario.salvarComum((success) {
    print('Sucesso: $success');
  }, (error) {
    print('Erro: $error');
  });

  try {
    final sucesso = await usuario.salvarCompleter();
    print('Sucesso completer: $sucesso');
  } catch (e) {
    print('Erro completer: $e');
  }
}

class UsuarioRepository {
  void salvarComum(void Function(String) callbackSuccess,
      void Function(String) callbackError) {
    Timer(Duration(seconds: 2), () {
      try {
        // throw Exception();
        callbackSuccess('Usuário salvo com sucesso');
      } catch (e) {
        callbackError('Erro ao salvar usuário');
      }
    });
  }

  Future<String> salvarCompleter() {
    final completer = Completer<String>();
    Timer(Duration(seconds: 2), () {
      try {
        // throw Exception();
        completer.complete('Usuário salvo com sucesso');
      } catch (e) {
        completer.completeError('Erro ao salvar usuário');
      }
    });
    return completer.future;
  }
}
