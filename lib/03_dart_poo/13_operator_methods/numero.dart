class Numero {
  int i;
  Numero(this.i);

  // metodos utiliza o flag operator e só aceita caracteres de operacao
  Numero operator +(Numero numero2) {
    return Numero((i + numero2.i) * 2);
  }

  Numero operator -(Numero numero2) {
    return Numero(i - numero2.i);
  }
}
