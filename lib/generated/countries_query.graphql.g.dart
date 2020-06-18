// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCountries$Query$Country$Flag _$GetCountries$Query$Country$FlagFromJson(
    Map<String, dynamic> json) {
  return GetCountries$Query$Country$Flag()
    ..emoji = json['emoji'] as String
    ..svgFile = json['svgFile'] as String;
}

Map<String, dynamic> _$GetCountries$Query$Country$FlagToJson(
        GetCountries$Query$Country$Flag instance) =>
    <String, dynamic>{
      'emoji': instance.emoji,
      'svgFile': instance.svgFile,
    };

GetCountries$Query$Country _$GetCountries$Query$CountryFromJson(
    Map<String, dynamic> json) {
  return GetCountries$Query$Country()
    ..name = json['name'] as String
    ..flag = json['flag'] == null
        ? null
        : GetCountries$Query$Country$Flag.fromJson(
            json['flag'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetCountries$Query$CountryToJson(
        GetCountries$Query$Country instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flag': instance.flag?.toJson(),
    };

GetCountries$Query _$GetCountries$QueryFromJson(Map<String, dynamic> json) {
  return GetCountries$Query()
    ..country = (json['Country'] as List)
        ?.map((e) => e == null
            ? null
            : GetCountries$Query$Country.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetCountries$QueryToJson(GetCountries$Query instance) =>
    <String, dynamic>{
      'Country': instance.country?.map((e) => e?.toJson())?.toList(),
    };
