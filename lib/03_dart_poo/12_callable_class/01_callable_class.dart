import 'enviar_email.dart';

void main() {
  var enviarEmail = EnviarEmail();

  // chamando o metodo call
  enviarEmail('testeCall@gmail.com');

  // chamada normal do metodo enviar
  enviarEmail.enviar('testeEnviar@gmail.com');
}
