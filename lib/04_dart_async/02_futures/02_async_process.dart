void main() {
  // processamento assincrono
  // Event Loop respeita processos finalizados (FIFO - First In, First Out)
  print('Iniciando Main');
  func1(1);
  func1(2);
  func1(3);
  func2();
  print('Finalizando Main');
}

void func1(int i) {
  print('Iniciando Func1');
  Future.delayed(
      Duration(seconds: 2), () => print('Fazendo algo complexo Func$i'));
  print('Finalizando Func1');
}

void func2() {
  print('Iniciando Func2');
  Future.delayed(
      Duration(seconds: 1), () => print('Fazendo algo complexo Func2'));
  print('Finalizando Func2');
}
