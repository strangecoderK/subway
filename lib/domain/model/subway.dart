import 'package:freezed_annotation/freezed_annotation.dart';

part 'subway.freezed.dart';

part 'subway.g.dart';

@freezed
class Subway with _$Subway {
  const factory Subway({
    required String stationName,
    required String subwayId,
    required String trainLineName,
    required String message,
  }) = _Subway;

  factory Subway.fromJson(Map<String, Object?> json) => _$SubwayFromJson(json);
}