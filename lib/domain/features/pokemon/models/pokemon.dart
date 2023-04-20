import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  factory Pokemon({
    required String name,
    required String description,
    required int height,
    required int weight,
  }) = _Pokemon;

}