void main() {
  // Future -> Incompleto, Completo com Sucesso, Completo com Erro

  Future(() {
    // função assincrona
  })
      .then((value) {
    // registrando função que será executada quando o future for completado com sucesso!
  }).catchError((error) {
    // registrando função que será executada quando o futuro for completado com erro!
  }).whenComplete(() {
    // registando a funcão que será executada SEMPRE (quando erro ou sucesso)!
  });
}
