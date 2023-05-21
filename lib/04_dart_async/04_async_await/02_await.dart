// O main com maior prioridade vai startar o Isolate e executa o buscarTotalAlunos,
// ao entrar na função é executado o print('esse ponto do método é sincrono').
// Na linha seguinte o await registra o Future.value(887) dentro do Event Loop que
// será resolvido após finalizar o Main, ao retornar ao Main o callback de totalAlunos
// recebe uma resposta de com um futuro incompleto (Instance of 'Future<int>') que
// sera impresso no ultimo print('Resposta'). Ao terminar a execução do Main a
// execução retorna para o Event Loop e resolve o valor do future '887' e executa o
// print('método após o await'), após isso retorna o valor '887'. Por fim retorna o
// callback resolvendo o futuro incompleto com um sucesso e imprimi 'O total de alunos
// da ADF é: 887'.
void main() {
  final totalAlunos = buscarTotalAlunos();
  totalAlunos.then((totalAlunosValue) {
    print('O total de alunos da ADF é: $totalAlunosValue');
  });
  print('Resposta: $totalAlunos');
}

Future<int> buscarTotalAlunos() async {
  print('esse ponto do método é sincrono');
  final buscandoTotalAlunos = await Future.value(887);
  print('esse ponto do método é depois do await');
  return buscandoTotalAlunos;
}
