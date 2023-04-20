// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDto _$$_PokemonDtoFromJson(Map<String, dynamic> json) =>
    _$_PokemonDto(
      name: json['name'] as String,
      description: json['description'] as String,
      height: json['height'] as int,
      weight: json['weight'] as int,
    );

Map<String, dynamic> _$$_PokemonDtoToJson(_$_PokemonDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'height': instance.height,
      'weight': instance.weight,
    };
