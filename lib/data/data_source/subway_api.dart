import 'package:subway/data/dto/subway_dto.dart';

abstract interface class SubwayApi {
  Future<List<RealtimeArrivalList>> getArrivalList(String query);
}
