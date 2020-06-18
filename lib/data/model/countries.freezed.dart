// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'countries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Countries _$CountriesFromJson(Map<String, dynamic> json) {
  return _Countries.fromJson(json);
}

class _$CountriesTearOff {
  const _$CountriesTearOff();

  _Countries call(
      {@required @JsonKey(name: 'Country') List<Country> countries}) {
    return _Countries(
      countries: countries,
    );
  }
}

// ignore: unused_element
const $Countries = _$CountriesTearOff();

mixin _$Countries {
  @JsonKey(name: 'Country')
  List<Country> get countries;

  Map<String, dynamic> toJson();
  $CountriesCopyWith<Countries> get copyWith;
}

abstract class $CountriesCopyWith<$Res> {
  factory $CountriesCopyWith(Countries value, $Res Function(Countries) then) =
      _$CountriesCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'Country') List<Country> countries});
}

class _$CountriesCopyWithImpl<$Res> implements $CountriesCopyWith<$Res> {
  _$CountriesCopyWithImpl(this._value, this._then);

  final Countries _value;
  // ignore: unused_field
  final $Res Function(Countries) _then;

  @override
  $Res call({
    Object countries = freezed,
  }) {
    return _then(_value.copyWith(
      countries:
          countries == freezed ? _value.countries : countries as List<Country>,
    ));
  }
}

abstract class _$CountriesCopyWith<$Res> implements $CountriesCopyWith<$Res> {
  factory _$CountriesCopyWith(
          _Countries value, $Res Function(_Countries) then) =
      __$CountriesCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'Country') List<Country> countries});
}

class __$CountriesCopyWithImpl<$Res> extends _$CountriesCopyWithImpl<$Res>
    implements _$CountriesCopyWith<$Res> {
  __$CountriesCopyWithImpl(_Countries _value, $Res Function(_Countries) _then)
      : super(_value, (v) => _then(v as _Countries));

  @override
  _Countries get _value => super._value as _Countries;

  @override
  $Res call({
    Object countries = freezed,
  }) {
    return _then(_Countries(
      countries:
          countries == freezed ? _value.countries : countries as List<Country>,
    ));
  }
}

@JsonSerializable()
class _$_Countries with DiagnosticableTreeMixin implements _Countries {
  const _$_Countries({@required @JsonKey(name: 'Country') this.countries})
      : assert(countries != null);

  factory _$_Countries.fromJson(Map<String, dynamic> json) =>
      _$_$_CountriesFromJson(json);

  @override
  @JsonKey(name: 'Country')
  final List<Country> countries;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Countries(countries: $countries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Countries'))
      ..add(DiagnosticsProperty('countries', countries));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Countries &&
            (identical(other.countries, countries) ||
                const DeepCollectionEquality()
                    .equals(other.countries, countries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countries);

  @override
  _$CountriesCopyWith<_Countries> get copyWith =>
      __$CountriesCopyWithImpl<_Countries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountriesToJson(this);
  }
}

abstract class _Countries implements Countries {
  const factory _Countries(
          {@required @JsonKey(name: 'Country') List<Country> countries}) =
      _$_Countries;

  factory _Countries.fromJson(Map<String, dynamic> json) =
      _$_Countries.fromJson;

  @override
  @JsonKey(name: 'Country')
  List<Country> get countries;
  @override
  _$CountriesCopyWith<_Countries> get copyWith;
}
