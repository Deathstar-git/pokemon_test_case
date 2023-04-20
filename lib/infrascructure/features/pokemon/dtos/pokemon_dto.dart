import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/features/pokemon/models/pokemon.dart';


part 'pokemon_dto.freezed.dart';

part 'pokemon_dto.g.dart';

@freezed
class PokemonDto with _$PokemonDto{
  const factory PokemonDto({
    required String name,
    required String description,
    required int height,
    required int weight,
  }) = _PokemonDto;

  const PokemonDto._();

  factory PokemonDto.fromJson(Map<String, dynamic> json)
  => _$PokemonDtoFromJson(json);

  Pokemon toDomain() {
    return Pokemon(
        name: name,
        description: description,
        height: height,
        weight: weight);
  }
}