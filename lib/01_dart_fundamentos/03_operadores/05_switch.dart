void main() {
  final diaDaSemana = 1;
  var diaDaSemanaStr = '';

  switch (diaDaSemana) {
    case 0:
      diaDaSemanaStr = 'Domingo';
      break;
    case 1:
      diaDaSemanaStr = 'Segunda-Feira';
      break;
    default:
      diaDaSemanaStr = 'Não encontrado';
      break;
  }

  print(diaDaSemanaStr);

  final idade = 20;

  // if idade = 18 ou 19 ou 20 faça (maior de idade) senão (menor de idade)
  switch (idade) {
    case 18:
    case 19:
    case 20:
      print('maior de idade');
      break;
    default:
      print('menor de idade');
      break;
  }
}
