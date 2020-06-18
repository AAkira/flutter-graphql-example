// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$_$_CountryFromJson(Map<String, dynamic> json) {
  return _$_Country(
    name: json['name'] as String,
    flag: json['flag'] == null
        ? null
        : Flag.fromJson(json['flag'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flag': instance.flag,
    };
