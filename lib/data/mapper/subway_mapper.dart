import 'package:subway/data/dto/subway_dto.dart';
import 'package:subway/domain/model/subway.dart';

extension SubwayMapper on RealtimeArrivalList {
  Subway dtoToModel() {
    return Subway(
        stationName: statnNm ?? '',
        subwayId: subwayLine(subwayId),
        trainLineName: trainLineNm ?? '',
        message: arvlMsg2 ?? '');
  }

  String subwayLine(String? subwayId) {
    String data = '';
    switch (subwayId) {
      case '1001':
        data = '1호선';
      case '1002':
        data = '2호선';
      case '1003':
        data = '3호선';
      case '1004':
        data = '4호선';
      case '1005':
        data = '5호선';
      case '1006':
        data = '6호선';
      case '1007':
        data = '7호선';
      case '1008':
        data = '8호선';
      case '1009':
        data = '9호선';
      case '1061':
        data = '중앙선';
      case '1063':
        data = '경의중앙선';
      case '1065':
        data = '공항철도';
      case '1067':
        data = '경춘선';
      case '1075':
        data = '수의분당선';
      case '1077':
        data = '신분당선';
      case '1092':
        data = '우이신설선';
      case '1093':
        data = '서해선';
      case '1081':
        data = '경강선';
      case '1032':
        data = 'GTX-A';
      case null:
        data = '';
    }
    return data;
  }
}
