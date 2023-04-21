
import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:pokemon_test_case/infrascructure/features/services/pokemon_api.dart';

@Injectable()
class PokemonRandomizer {
  final PokemonApi _pokemonApi;
  PokemonRandomizer(this._pokemonApi);
  Future<int> _getCountFromApi() async {
    final response = await _pokemonApi.getPokemonCount();
    final count = response['count'] as int;
    return count;
  }

  Future<int> getRandomId() async {
    final count = await _getCountFromApi();
    final random = Random();
    int number = random.nextInt(count) + 1;

    if (number > 1010) {
      number = number - 1010 + 10000;
    }
    return number;
  }

}