import 'models/pokemon.dart';

abstract class IPokemonRepository {
  Future<Pokemon> getPokemonByName({
    required String name
});
  Future<Pokemon> getRandomPokemonById({
    required int id
});
}