void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  var quantidadeDesenvolvedores = 0;
  var quantidadeEstudantes = 0;
  var quantidadeDentistas = 0;
  var quantidadeJornalistas = 0;
  var quantidadeEstadoPaciente = 0;

  // outra forma de resolver o item 2
  final desenvolvedores = [];
  final estudantes = [];
  final dentistas = [];
  final jornalistas = [];

  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  print('Pacientes acima de 20 anos: ');
  for (final paciente in pacientes) {
    final dadosPaciente = paciente.split('|');
    final nome = dadosPaciente[0];
    final idade = int.tryParse(dadosPaciente[1]) ?? 0;
    final profissaoPaciente = dadosPaciente[2].toLowerCase();
    final estadoPaciente = dadosPaciente[3].toLowerCase();

    if (idade > 20) {
      print(nome);
    }

    if (profissaoPaciente == 'desenvolvedor') {
      quantidadeDesenvolvedores++;
      desenvolvedores.add(nome);
    }
    if (profissaoPaciente == 'estudante') {
      quantidadeEstudantes++;
      estudantes.add(nome);
    }
    if (profissaoPaciente == 'dentista') {
      quantidadeDentistas++;
      dentistas.add(nome);
    }
    if (profissaoPaciente == 'jornalista') {
      quantidadeJornalistas++;
      jornalistas.add(nome);
    }
    if (estadoPaciente == 'sp') {
      quantidadeEstadoPaciente++;
    }
  }
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  print('');
  print('Quantidade de pacientes por profissão:');
  print('Desenvolvedores: $quantidadeDesenvolvedores');
  print('Estudantes: $quantidadeEstudantes');
  print('Dentistas: $quantidadeDentistas');
  print('Jornalistas: $quantidadeJornalistas');

  // print('');
  // print('outra forma de resolver');
  // print('Quantidade de pacientes por profissão:');
  // print('Desenvolvedores: ${desenvolvedores.length}');
  // print('Nomes Desenvolvedores: $desenvolvedores');
  // print('Estudantes: ${estudantes.length}');
  // print('Nomes Estudantes: $estudantes');
  // print('Dentistas: ${dentistas.length}');
  // print('Nomes Dentistas: $dentistas');
  // print('Jornalistas: ${jornalistas.length}');
  // print('Nomes Jornalistas: $jornalistas');

  //! 3 - Apresente a quantidade de pacientes que moram em SP
  print('');
  print('Quantidade de pacientes que moram em SP: $quantidadeEstadoPaciente');

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP
}
