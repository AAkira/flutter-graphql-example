import 'package:flutter/foundation.dart';
import 'package:fluttergraphql/data/model/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries.freezed.dart';

part 'countries.g.dart';

@freezed
abstract class Countries with _$Countries {
  const factory Countries({
    @JsonKey(name: 'Country') @required List<Country> countries,
  }) = _Countries;

  factory Countries.fromJson(Map<String, dynamic> json) =>
      _$CountriesFromJson(json);
}
