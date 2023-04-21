import 'package:injectable/injectable.dart';

import '../../../domain/features/pokemon/i_pokemon_repository.dart';
import '../../../domain/features/pokemon/models/pokemon.dart';
import '../services/pokemon_api.dart';

@Injectable(as: IPokemonRepository)
class PokemonRepository extends IPokemonRepository {
  final PokemonApi _pokemonApi;
  PokemonRepository(this._pokemonApi);
  @override
  Future<Pokemon> getPokemonByName({required String name}) async {
    final res = await _pokemonApi.getPokemonByName(name);
    return res.toDomain();
  }

  @override
  Future<Pokemon> getRandomPokemonById({required int id}) async{
    final res = await _pokemonApi.getRandomPokemonById(id);
    return res.toDomain();
  }


}