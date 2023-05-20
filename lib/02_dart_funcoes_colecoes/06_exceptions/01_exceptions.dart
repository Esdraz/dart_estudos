void main() {
  var idade = '31';
  String? nome;

  // caso haja alguma excessão dentro do try sera enviado para os catch
  try {
    print('inicio');
    var idadeParse = int.parse(idade);
    // nome!.toLowerCase();

    if (idadeParse == 31) {
      throw Exception();
    }

    // os catch podem ser especificos (on) ou genericos (catch)
    // 'e' -> exception objeto
    // 's' -> stacktrace (lista de func ou methods que levam ate a excessão gerada)
  } on FormatException catch (e, s) {
    // print(e);
    print(s);
  } on TypeError {
    print('Erro ao converter idade');
  } on Exception {
    print('Erro idade == 31');
  } catch (e) {
    print('Erro ao executar programa');

    // finally sempre sera executado
  } finally {
    print('Finally');
  }
}
