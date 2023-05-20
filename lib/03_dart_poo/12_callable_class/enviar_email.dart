class EnviarEmail {
  // obrigatoriamente o método precisa ter o nome call
  // dentro do método podem ser chamados outros métodos como o enviar nesse caso
  bool call(String email) {
    print('Chamando o método call');
    return enviar(email);
  }

  bool enviar(String email) {
    print('Chamando o método enviar');
    return true;
  }
}
