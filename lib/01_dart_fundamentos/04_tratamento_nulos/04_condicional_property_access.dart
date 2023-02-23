// '?' - var pode aceitar nulo
String? nomeCompleto;

void main() {
  // Null Aware Operator
  // var nomeCompletoLocal = nomeCompleto ?? 'Não preenchido';

  // IF condicional
  if (nomeCompleto != null) {
    print(nomeCompleto!.toUpperCase());
  } else {
    print('nome não preenchido');
  }

  // Conditional Property Access
  //
  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido!');
}
