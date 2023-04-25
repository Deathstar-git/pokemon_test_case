import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/features/pokemon/models/pokemon.dart';


part 'pokemon_dto.freezed.dart';

part 'pokemon_dto.g.dart';

@freezed
class PokemonDto with _$PokemonDto{
  const factory PokemonDto({
    required int id,
    required String name,
    // required List<AbilityDto> abilities,
    required int height,
    required int weight,
  }) = _PokemonDto;

  const PokemonDto._();

  factory PokemonDto.fromJson(Map<String, dynamic> json)
  => _$PokemonDtoFromJson(json);

  Pokemon toDomain() {
    return Pokemon(
        id: id,
        name: name,
        // abilities: <Ability> [],
        // abilities: abilities.map((ability) => ability.ability.name).toList(),
        height: height,
        weight: weight);
  }
}

@freezed
class AbilityDto with _$AbilityDto {
  const factory AbilityDto({
    required String name,
    required String url,
  }) = _AbilityDto;

  factory AbilityDto.fromJson(Map<String, dynamic> json) =>
      _$AbilityDtoFromJson(json);

  const AbilityDto._();

  Ability toDomain() {
    return Ability(
        url: url,
        name: name,
    );
  }
}