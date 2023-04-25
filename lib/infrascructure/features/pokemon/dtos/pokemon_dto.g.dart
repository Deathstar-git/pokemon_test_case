// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDto _$$_PokemonDtoFromJson(Map<String, dynamic> json) =>
    _$_PokemonDto(
      id: json['id'] as int,
      name: json['name'] as String,
      abilities: (json['abilities'] as List<dynamic>?)
              ?.map((e) => AbilityDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      height: json['height'] as int,
      weight: json['weight'] as int,
    );

Map<String, dynamic> _$$_PokemonDtoToJson(_$_PokemonDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abilities': instance.abilities,
      'height': instance.height,
      'weight': instance.weight,
    };

_$_AbilityDto _$$_AbilityDtoFromJson(Map<String, dynamic> json) =>
    _$_AbilityDto(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_AbilityDtoToJson(_$_AbilityDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
