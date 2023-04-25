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
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<AbilityDto> get abilities => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

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
      {int id,
      String name,
      List<AbilityDto> abilities,
      int height,
      int weight});
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
    Object? id = null,
    Object? name = null,
    Object? abilities = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityDto>,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
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
      {int id,
      String name,
      List<AbilityDto> abilities,
      int height,
      int weight});
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
    Object? id = null,
    Object? name = null,
    Object? abilities = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_$_PokemonDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityDto>,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonDto extends _PokemonDto {
  const _$_PokemonDto(
      {required this.id,
      required this.name,
      final List<AbilityDto> abilities = const [],
      required this.height,
      required this.weight})
      : _abilities = abilities,
        super._();

  factory _$_PokemonDto.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<AbilityDto> _abilities;
  @override
  @JsonKey()
  List<AbilityDto> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  final int height;
  @override
  final int weight;

  @override
  String toString() {
    return 'PokemonDto(id: $id, name: $name, abilities: $abilities, height: $height, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_abilities), height, weight);

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
      {required final int id,
      required final String name,
      final List<AbilityDto> abilities,
      required final int height,
      required final int weight}) = _$_PokemonDto;
  const _PokemonDto._() : super._();

  factory _PokemonDto.fromJson(Map<String, dynamic> json) =
      _$_PokemonDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<AbilityDto> get abilities;
  @override
  int get height;
  @override
  int get weight;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDtoCopyWith<_$_PokemonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AbilityDto _$AbilityDtoFromJson(Map<String, dynamic> json) {
  return _AbilityDto.fromJson(json);
}

/// @nodoc
mixin _$AbilityDto {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityDtoCopyWith<AbilityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityDtoCopyWith<$Res> {
  factory $AbilityDtoCopyWith(
          AbilityDto value, $Res Function(AbilityDto) then) =
      _$AbilityDtoCopyWithImpl<$Res, AbilityDto>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$AbilityDtoCopyWithImpl<$Res, $Val extends AbilityDto>
    implements $AbilityDtoCopyWith<$Res> {
  _$AbilityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AbilityDtoCopyWith<$Res>
    implements $AbilityDtoCopyWith<$Res> {
  factory _$$_AbilityDtoCopyWith(
          _$_AbilityDto value, $Res Function(_$_AbilityDto) then) =
      __$$_AbilityDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_AbilityDtoCopyWithImpl<$Res>
    extends _$AbilityDtoCopyWithImpl<$Res, _$_AbilityDto>
    implements _$$_AbilityDtoCopyWith<$Res> {
  __$$_AbilityDtoCopyWithImpl(
      _$_AbilityDto _value, $Res Function(_$_AbilityDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_AbilityDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AbilityDto extends _AbilityDto {
  const _$_AbilityDto({required this.name, required this.url}) : super._();

  factory _$_AbilityDto.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityDtoFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'AbilityDto(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbilityDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbilityDtoCopyWith<_$_AbilityDto> get copyWith =>
      __$$_AbilityDtoCopyWithImpl<_$_AbilityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilityDtoToJson(
      this,
    );
  }
}

abstract class _AbilityDto extends AbilityDto {
  const factory _AbilityDto(
      {required final String name, required final String url}) = _$_AbilityDto;
  const _AbilityDto._() : super._();

  factory _AbilityDto.fromJson(Map<String, dynamic> json) =
      _$_AbilityDto.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_AbilityDtoCopyWith<_$_AbilityDto> get copyWith =>
      throw _privateConstructorUsedError;
}
