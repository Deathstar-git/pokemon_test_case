import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/features/pokemon/models/pokemon.dart';


part 'pokemon_dto.freezed.dart';

part 'pokemon_dto.g.dart';

@freezed
class PokemonDto with _$PokemonDto{
  const factory PokemonDto({
    @JsonKey(name: 'base_experience') required int baseExperience,
    @JsonKey(name: 'is_default') required bool isDefault,
    required String name,
    required int height,
    required int weight,
    required int order
  }) = _PokemonDto;

  const PokemonDto._();

  factory PokemonDto.fromJson(Map<String, dynamic> json)
  => _$PokemonDtoFromJson(json);

  Pokemon toDomain() {
    return Pokemon(
        name: name,
        baseExperience: baseExperience,
        order: order,
        isDefault: isDefault,
        height: height,
        weight: weight);
  }
}