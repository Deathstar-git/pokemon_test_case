import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/features/pokemon/models/pokemon.dart';


part 'pokemon_dto.freezed.dart';

part 'pokemon_dto.g.dart';

@freezed
class PokemonDto with _$PokemonDto {
  const factory PokemonDto({
    required int id,
    required String name,
    List<AbilityListDto>? abilities,
    required int height,
    required int weight,
  }) = _PokemonDto;

  const PokemonDto._();

  factory PokemonDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonDtoFromJson(json);

  Pokemon toDomain() {
    if (kDebugMode) {
      print('Pokemon toDomain:$abilities');
    }

    return Pokemon(
      id: id,
      name: name,
      abilities: abilities
          ?.map((ability) => AbilityList(
        isHidden: ability.isHidden,
        slot: ability.slot,
        ability: ability.ability
            ?.map((a) => Ability(name: a.name, url: a.url))
            .toList(),
      )).toList(),
      height: height,
      weight: weight,
    );
  }
}

@freezed
class AbilityListDto with _$AbilityListDto {
  const factory AbilityListDto({
    List<AbilityDto>? ability,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    required int slot
  }) = _AbilityListDto;

  // factory AbilityListDto.fromJson(Map<String, dynamic> json) =>
  //     _$AbilityListDtoFromJson(json);
  factory AbilityListDto.fromJson(Map<String, dynamic> json) {
    if (kDebugMode) {
      print('AbilityList fromJson:$json');
    }
    final abilityJson = json['ability'];
    return AbilityListDto(
      ability: abilityJson is List
          ? (abilityJson).map((e) => AbilityDto.fromJson(e)).toList()
          : [AbilityDto.fromJson(abilityJson)],
      isHidden: json['is_hidden'] as bool,
      slot: json['slot'] as int,
    );
  }
  Map<String, dynamic> toJson () =>
      <String, dynamic>{
        'ability': ability,
        'is_hidden': isHidden,
        'slot': slot
      };

  const AbilityListDto._();

  AbilityList toDomain() {
    if (kDebugMode) {
      print('AbilityList toDomain:$ability');
    }
    return AbilityList(
        isHidden: isHidden,
        slot: slot,
        ability: ability?.map((ability) => Ability(name: ability.name, url: ability.url)).toList()
    );
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