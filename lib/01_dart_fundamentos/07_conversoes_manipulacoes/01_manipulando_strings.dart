void main() {
  final nome = 'Francisco Sousa';

  var subStringNome = nome.substring(9);
  print(subStringNome);

  // pega do index 0 ate 9 = Francisco
  var subStringNome1 = nome.substring(0, 9);
  print(subStringNome1);

  var sexo = 'Masculino';

  var sexoSigra = sexo.substring(0, 1);
  print(sexoSigra);

  // startsWith - caracteres são Camel Case
  if (sexo.startsWith('M')) {
    print('Sexo masculino.');
  }

  // .toLowerCase() transforma tudo em minusculo e depois o startsWith testa
  if (sexo.toLowerCase().startsWith('m')) {
    print('Sexo masculino.');
  }

  if (nome.toLowerCase().contains('sousa')) {
    print('Familia Sousa.');
  }

  // interpolação
  var nome1 = 'Francisco';
  var sobrenome = 'Sousa';

  var saudacao = 'Olá $nome1 $sobrenome, bem vindo!';
  print(saudacao);

  print('Olá ${nome1.toLowerCase()}');
  print('Soma de 2 + 2 é: ${2 + 2}');

  var paciente = 'Francisco Sousa|31|Estudante Flutter|PB';

  // .split() quebra os dados com base em um determinado caractere e cria uma lista
  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);
  // print(dadosPaciente[0]);
  // print(dadosPaciente[1]);
  // print(dadosPaciente[2]);
  // print(dadosPaciente[3]);

  // imprimindo dados separados com o for-in
  // for (var dado in dadosPaciente) {
  //   print(dado);
  // }

  dadosPaciente.forEach(print);

  var pacientes = [
    'Francisco Sousa|31|Estudante Flutter|PB',
    'Maria Silva|38|Médica|RJ',
    'Ana Lima Barbosa|26|Estudante Direito|CE',
  ];

  // for-in varre a lista pacientes e o .split() divide os dados de cada paciente
  // na var dadosPaciente, a var nomeCompleto recebe o nome completo do paciente
  // index:              0        1          2         3
  // paciente:  'Francisco Sousa|31|Estudante Flutter|PB'
  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var nomeCompleto = dadosPaciente[0];
    var nomes = nomeCompleto.split(' ');
    print(nomes.last);
  }
}
