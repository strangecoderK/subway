import 'package:subway/domain/model/subway.dart';

abstract interface class SubwayRepository {
  Future<List<Subway>> getSubwayInfo(String query);
}
