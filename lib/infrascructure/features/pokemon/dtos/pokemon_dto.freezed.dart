// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonDto _$PokemonDtoFromJson(Map<String, dynamic> json) {
  return _PokemonDto.fromJson(json);
}

/// @nodoc
mixin _$PokemonDto {
  @JsonKey(name: 'base_experience')
  int get baseExperience => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDtoCopyWith<PokemonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDtoCopyWith<$Res> {
  factory $PokemonDtoCopyWith(
          PokemonDto value, $Res Function(PokemonDto) then) =
      _$PokemonDtoCopyWithImpl<$Res, PokemonDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_experience') int baseExperience,
      @JsonKey(name: 'is_default') bool isDefault,
      String name,
      int height,
      int weight,
      int order});
}

/// @nodoc
class _$PokemonDtoCopyWithImpl<$Res, $Val extends PokemonDto>
    implements $PokemonDtoCopyWith<$Res> {
  _$PokemonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseExperience = null,
    Object? isDefault = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonDtoCopyWith<$Res>
    implements $PokemonDtoCopyWith<$Res> {
  factory _$$_PokemonDtoCopyWith(
          _$_PokemonDto value, $Res Function(_$_PokemonDto) then) =
      __$$_PokemonDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_experience') int baseExperience,
      @JsonKey(name: 'is_default') bool isDefault,
      String name,
      int height,
      int weight,
      int order});
}

/// @nodoc
class __$$_PokemonDtoCopyWithImpl<$Res>
    extends _$PokemonDtoCopyWithImpl<$Res, _$_PokemonDto>
    implements _$$_PokemonDtoCopyWith<$Res> {
  __$$_PokemonDtoCopyWithImpl(
      _$_PokemonDto _value, $Res Function(_$_PokemonDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseExperience = null,
    Object? isDefault = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? order = null,
  }) {
    return _then(_$_PokemonDto(
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonDto extends _PokemonDto {
  const _$_PokemonDto(
      {@JsonKey(name: 'base_experience') required this.baseExperience,
      @JsonKey(name: 'is_default') required this.isDefault,
      required this.name,
      required this.height,
      required this.weight,
      required this.order})
      : super._();

  factory _$_PokemonDto.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonDtoFromJson(json);

  @override
  @JsonKey(name: 'base_experience')
  final int baseExperience;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  @override
  final int order;

  @override
  String toString() {
    return 'PokemonDto(baseExperience: $baseExperience, isDefault: $isDefault, name: $name, height: $height, weight: $weight, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonDto &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, baseExperience, isDefault, name, height, weight, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonDtoCopyWith<_$_PokemonDto> get copyWith =>
      __$$_PokemonDtoCopyWithImpl<_$_PokemonDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonDtoToJson(
      this,
    );
  }
}

abstract class _PokemonDto extends PokemonDto {
  const factory _PokemonDto(
      {@JsonKey(name: 'base_experience') required final int baseExperience,
      @JsonKey(name: 'is_default') required final bool isDefault,
      required final String name,
      required final int height,
      required final int weight,
      required final int order}) = _$_PokemonDto;
  const _PokemonDto._() : super._();

  factory _PokemonDto.fromJson(Map<String, dynamic> json) =
      _$_PokemonDto.fromJson;

  @override
  @JsonKey(name: 'base_experience')
  int get baseExperience;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDtoCopyWith<_$_PokemonDto> get copyWith =>
      throw _privateConstructorUsedError;
}
