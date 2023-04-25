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
  List<AbilityListDto>? get abilities => throw _privateConstructorUsedError;
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
      List<AbilityListDto>? abilities,
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
    Object? abilities = freezed,
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
      abilities: freezed == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityListDto>?,
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
      List<AbilityListDto>? abilities,
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
    Object? abilities = freezed,
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
      abilities: freezed == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityListDto>?,
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
class _$_PokemonDto extends _PokemonDto with DiagnosticableTreeMixin {
  const _$_PokemonDto(
      {required this.id,
      required this.name,
      final List<AbilityListDto>? abilities,
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
  final List<AbilityListDto>? _abilities;
  @override
  List<AbilityListDto>? get abilities {
    final value = _abilities;
    if (value == null) return null;
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int height;
  @override
  final int weight;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonDto(id: $id, name: $name, abilities: $abilities, height: $height, weight: $weight)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('abilities', abilities))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('weight', weight));
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
      final List<AbilityListDto>? abilities,
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
  List<AbilityListDto>? get abilities;
  @override
  int get height;
  @override
  int get weight;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonDtoCopyWith<_$_PokemonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AbilityListDto {
  List<AbilityDto>? get ability => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;
  int get slot => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbilityListDtoCopyWith<AbilityListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityListDtoCopyWith<$Res> {
  factory $AbilityListDtoCopyWith(
          AbilityListDto value, $Res Function(AbilityListDto) then) =
      _$AbilityListDtoCopyWithImpl<$Res, AbilityListDto>;
  @useResult
  $Res call(
      {List<AbilityDto>? ability,
      @JsonKey(name: 'is_hidden') bool isHidden,
      int slot});
}

/// @nodoc
class _$AbilityListDtoCopyWithImpl<$Res, $Val extends AbilityListDto>
    implements $AbilityListDtoCopyWith<$Res> {
  _$AbilityListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = freezed,
    Object? isHidden = null,
    Object? slot = null,
  }) {
    return _then(_value.copyWith(
      ability: freezed == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as List<AbilityDto>?,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AbilityListDtoCopyWith<$Res>
    implements $AbilityListDtoCopyWith<$Res> {
  factory _$$_AbilityListDtoCopyWith(
          _$_AbilityListDto value, $Res Function(_$_AbilityListDto) then) =
      __$$_AbilityListDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AbilityDto>? ability,
      @JsonKey(name: 'is_hidden') bool isHidden,
      int slot});
}

/// @nodoc
class __$$_AbilityListDtoCopyWithImpl<$Res>
    extends _$AbilityListDtoCopyWithImpl<$Res, _$_AbilityListDto>
    implements _$$_AbilityListDtoCopyWith<$Res> {
  __$$_AbilityListDtoCopyWithImpl(
      _$_AbilityListDto _value, $Res Function(_$_AbilityListDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ability = freezed,
    Object? isHidden = null,
    Object? slot = null,
  }) {
    return _then(_$_AbilityListDto(
      ability: freezed == ability
          ? _value._ability
          : ability // ignore: cast_nullable_to_non_nullable
              as List<AbilityDto>?,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AbilityListDto extends _AbilityListDto with DiagnosticableTreeMixin {
  const _$_AbilityListDto(
      {final List<AbilityDto>? ability,
      @JsonKey(name: 'is_hidden') required this.isHidden,
      required this.slot})
      : _ability = ability,
        super._();

  final List<AbilityDto>? _ability;
  @override
  List<AbilityDto>? get ability {
    final value = _ability;
    if (value == null) return null;
    if (_ability is EqualUnmodifiableListView) return _ability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  final int slot;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbilityListDto(ability: $ability, isHidden: $isHidden, slot: $slot)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbilityListDto'))
      ..add(DiagnosticsProperty('ability', ability))
      ..add(DiagnosticsProperty('isHidden', isHidden))
      ..add(DiagnosticsProperty('slot', slot));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbilityListDto &&
            const DeepCollectionEquality().equals(other._ability, _ability) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.slot, slot) || other.slot == slot));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_ability), isHidden, slot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AbilityListDtoCopyWith<_$_AbilityListDto> get copyWith =>
      __$$_AbilityListDtoCopyWithImpl<_$_AbilityListDto>(this, _$identity);
}

abstract class _AbilityListDto extends AbilityListDto {
  const factory _AbilityListDto(
      {final List<AbilityDto>? ability,
      @JsonKey(name: 'is_hidden') required final bool isHidden,
      required final int slot}) = _$_AbilityListDto;
  const _AbilityListDto._() : super._();

  @override
  List<AbilityDto>? get ability;
  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  int get slot;
  @override
  @JsonKey(ignore: true)
  _$$_AbilityListDtoCopyWith<_$_AbilityListDto> get copyWith =>
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
class _$_AbilityDto extends _AbilityDto with DiagnosticableTreeMixin {
  const _$_AbilityDto({required this.name, required this.url}) : super._();

  factory _$_AbilityDto.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityDtoFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbilityDto(name: $name, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbilityDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url));
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
