void main() {
  // processamento sincrono
  print('Iniciando Main');
  func1();
  func2();
  print('Finalizando Main');
}

void func1() {
  print('Iniciando Func1');
  print('Fazendo algo complexo Func1');
  print('Finalizando Func1');
}

void func2() {
  print('Iniciando Func2');
  print('Fazendo algo complexo Func2');
  print('Finalizando Func2');
}
