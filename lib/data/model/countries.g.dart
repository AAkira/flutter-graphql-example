// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Countries _$_$_CountriesFromJson(Map<String, dynamic> json) {
  return _$_Countries(
    countries: (json['Country'] as List)
        ?.map((e) =>
            e == null ? null : Country.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CountriesToJson(_$_Countries instance) =>
    <String, dynamic>{
      'Country': instance.countries,
    };
