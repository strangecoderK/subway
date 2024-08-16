import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:subway/domain/model/subway.dart';

part 'subway_state.freezed.dart';

part 'subway_state.g.dart';

@freezed
class SubwayState with _$SubwayState {
  const factory SubwayState({
    @Default([]) List<Subway> subwayList,
  }) = _SubwayState;

  factory SubwayState.fromJson(Map<String, Object?> json) =>
      _$SubwayStateFromJson(json);
}
