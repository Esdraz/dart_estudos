class Pessoa {
  String nome;
  String email;

  Pessoa({
    required this.nome,
    required this.email,
  });

  // Metodo 01
  //
  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   if (other is Pessoa) {
  //     if (other.nome == nome) {
  //       if (other.email == email) {
  //         return true;
  //       } else {
  //         return false;
  //       }
  //     } else {
  //       return false;
  //     }
  //   } else {
  //     return false;
  //   }
  // }

  // Metodo 02
  //
  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   var isEquals = true;

  //   if (other is Pessoa) {
  //     if (other.nome == nome) {
  //       if (other.email == email) {
  //         isEquals = true;
  //       }
  //     }
  //   }
  //   return isEquals;
  // }

  // Metodo 03
  //
  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is Pessoa && other.nome == nome && other.email == email;
  // }

  // HashCode
  //
  // @override
  // int get hashCode {
  //   return nome.hashCode ^ email.hashCode;
  // }

  @override
  bool operator ==(covariant Pessoa other) {
    if (identical(this, other)) return true;

    return other.nome == nome && other.email == email;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode;

  @override
  String toString() => 'Pessoa(nome: $nome, email: $email)';
}
