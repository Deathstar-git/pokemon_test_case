part of 'pokemon_bloc.dart';

@freezed
class PokemonEvent with _$PokemonEvent {
  const factory PokemonEvent.started() = _Started;
  const factory PokemonEvent.getPokemonByName(String name) = _GetPokemonByName;
  const factory PokemonEvent.getRandomPokemonById(int id) = _GetRandomPokemonById;
}