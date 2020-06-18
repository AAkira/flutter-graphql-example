import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flag.freezed.dart';

part 'flag.g.dart';

@freezed
abstract class Flag with _$Flag {
  const factory Flag({
    @required String emoji,
    @required String svgFile,
  }) = _Flag;

  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);
}
