import 'dart:convert';

import 'package:subway/data/data_source/subway_api.dart';
import 'package:subway/data/dto/subway_dto.dart';
import 'package:http/http.dart' as http;

class SubwayApiImpl implements SubwayApi {
  @override
  Future<List<RealtimeArrivalList>> getArrivalList(String query) async {
    final response = await http.get(Uri.parse(
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/$query'));
    final result = jsonDecode(response.body)['realtimeArrivalList'] as List;
    return result.map((e) => RealtimeArrivalList.fromJson(result)).toList();
  }
}