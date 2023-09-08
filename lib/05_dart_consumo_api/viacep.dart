import 'package:http/http.dart';

Future<void> main() async {
  final result =
      await get(Uri.parse('https://viacep.com.br/ws/58030909/json/'));

  print(result.body);
}
