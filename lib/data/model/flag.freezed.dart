// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'flag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Flag _$FlagFromJson(Map<String, dynamic> json) {
  return _Flag.fromJson(json);
}

class _$FlagTearOff {
  const _$FlagTearOff();

  _Flag call({@required String emoji, @required String svgFile}) {
    return _Flag(
      emoji: emoji,
      svgFile: svgFile,
    );
  }
}

// ignore: unused_element
const $Flag = _$FlagTearOff();

mixin _$Flag {
  String get emoji;
  String get svgFile;

  Map<String, dynamic> toJson();
  $FlagCopyWith<Flag> get copyWith;
}

abstract class $FlagCopyWith<$Res> {
  factory $FlagCopyWith(Flag value, $Res Function(Flag) then) =
      _$FlagCopyWithImpl<$Res>;
  $Res call({String emoji, String svgFile});
}

class _$FlagCopyWithImpl<$Res> implements $FlagCopyWith<$Res> {
  _$FlagCopyWithImpl(this._value, this._then);

  final Flag _value;
  // ignore: unused_field
  final $Res Function(Flag) _then;

  @override
  $Res call({
    Object emoji = freezed,
    Object svgFile = freezed,
  }) {
    return _then(_value.copyWith(
      emoji: emoji == freezed ? _value.emoji : emoji as String,
      svgFile: svgFile == freezed ? _value.svgFile : svgFile as String,
    ));
  }
}

abstract class _$FlagCopyWith<$Res> implements $FlagCopyWith<$Res> {
  factory _$FlagCopyWith(_Flag value, $Res Function(_Flag) then) =
      __$FlagCopyWithImpl<$Res>;
  @override
  $Res call({String emoji, String svgFile});
}

class __$FlagCopyWithImpl<$Res> extends _$FlagCopyWithImpl<$Res>
    implements _$FlagCopyWith<$Res> {
  __$FlagCopyWithImpl(_Flag _value, $Res Function(_Flag) _then)
      : super(_value, (v) => _then(v as _Flag));

  @override
  _Flag get _value => super._value as _Flag;

  @override
  $Res call({
    Object emoji = freezed,
    Object svgFile = freezed,
  }) {
    return _then(_Flag(
      emoji: emoji == freezed ? _value.emoji : emoji as String,
      svgFile: svgFile == freezed ? _value.svgFile : svgFile as String,
    ));
  }
}

@JsonSerializable()
class _$_Flag with DiagnosticableTreeMixin implements _Flag {
  const _$_Flag({@required this.emoji, @required this.svgFile})
      : assert(emoji != null),
        assert(svgFile != null);

  factory _$_Flag.fromJson(Map<String, dynamic> json) =>
      _$_$_FlagFromJson(json);

  @override
  final String emoji;
  @override
  final String svgFile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Flag(emoji: $emoji, svgFile: $svgFile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Flag'))
      ..add(DiagnosticsProperty('emoji', emoji))
      ..add(DiagnosticsProperty('svgFile', svgFile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Flag &&
            (identical(other.emoji, emoji) ||
                const DeepCollectionEquality().equals(other.emoji, emoji)) &&
            (identical(other.svgFile, svgFile) ||
                const DeepCollectionEquality().equals(other.svgFile, svgFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emoji) ^
      const DeepCollectionEquality().hash(svgFile);

  @override
  _$FlagCopyWith<_Flag> get copyWith =>
      __$FlagCopyWithImpl<_Flag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlagToJson(this);
  }
}

abstract class _Flag implements Flag {
  const factory _Flag({@required String emoji, @required String svgFile}) =
      _$_Flag;

  factory _Flag.fromJson(Map<String, dynamic> json) = _$_Flag.fromJson;

  @override
  String get emoji;
  @override
  String get svgFile;
  @override
  _$FlagCopyWith<_Flag> get copyWith;
}
