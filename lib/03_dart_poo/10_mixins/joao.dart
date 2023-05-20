import 'artista.dart';
import 'cantar.dart';
import 'dancar.dart';

// mixins aceitam tanto mixins (Dancar) quanto classes abstratas (Cantar)
// uma classe para ser mixin não pode extender de outras classes
class Joao extends Artista with Dancar, Cantar {}
