import 'package:flutter/foundation.dart';
import 'package:fluttergraphql/data/model/flag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

part 'country.g.dart';

@freezed
abstract class Country with _$Country {
  const factory Country({
    @required String name,
    @required Flag flag,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
