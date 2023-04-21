// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDto _$$_PokemonDtoFromJson(Map<String, dynamic> json) =>
    _$_PokemonDto(
      baseExperience: json['base_experience'] as int,
      isDefault: json['is_default'] as bool,
      name: json['name'] as String,
      height: json['height'] as int,
      weight: json['weight'] as int,
      order: json['order'] as int,
    );

Map<String, dynamic> _$$_PokemonDtoToJson(_$_PokemonDto instance) =>
    <String, dynamic>{
      'base_experience': instance.baseExperience,
      'is_default': instance.isDefault,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'order': instance.order,
    };
