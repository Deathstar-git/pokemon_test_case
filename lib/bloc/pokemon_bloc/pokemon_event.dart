part of 'pokemon_bloc.dart';

@freezed
class PokemonEvent with _$PokemonEvent {
  const factory PokemonEvent.getPokemonByName(String name) = GetPokemonByName;
  const factory PokemonEvent.getRandomPokemonById() = GetRandomPokemonById;
  const factory PokemonEvent.waiting() = Waiting;
}