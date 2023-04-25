import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  factory Pokemon({
    required int id,
    required String name,
    required List<AbilityList>? abilities,
    required int height,
    required int weight,
  }) = _Pokemon;

}

@freezed
class AbilityList with _$AbilityList {
  const factory AbilityList({
    // required String? name,
    // required String? url,
    required List<Ability>? ability,
    required bool isHidden,
    required int slot
  }) = _AbilityList;
}

@freezed
class Ability with _$Ability {
  const factory Ability({
    required String? name,
    required String? url
  }) = _Ability;
}