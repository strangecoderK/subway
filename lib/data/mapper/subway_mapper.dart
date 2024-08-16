import 'package:subway/data/dto/subway_dto.dart';
import 'package:subway/domain/model/subway.dart';

extension SubwayMapper on RealtimeArrivalList {
  Subway dtoToModel() {
    return Subway(
        stationName: statnNm ?? '',
        subwayId: subwayLine(subwayId),
        trainLineName: trainLineNm ?? '',
        message: arvlMsg2 ?? '',
        color: subwayColor(subwayId));
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

  String subwayColor(String? subwayId) {
    String data = '';
    switch (subwayId) {
      case '1001':
        data = '0xFF0052A4';
      case '1002':
        data = '0xFF009D3E';
      case '1003':
        data = '0xFFEF7C1C';
      case '1004':
        data = '0xFF00A5DE';
      case '1005':
        data = '0xFF7432B8';
      case '1006':
        data = '0xFFB55000';
      case '1007':
        data = '0xFF747F00';
      case '1008':
        data = '0xFFE6186C';
      case '1009':
        data = '0xFFBB8336';
      case '1061':
        data = '0xFF003DA5';
      case '1063':
        data = '0xFF77C371';
      case '1065':
        data = '0xFF0090D2';
      case '1067':
        data = '0xFF0C8E72';
      case '1075':
        data = '0xFFFFA300';
      case '1077':
        data = '0xFFC82127';
      case '1092':
        data = '0xFFB7C452';
      case '1093':
        data = '0xFF8FC31F';
      case '1081':
        data = '0xFF003DA5';
      case '1032':
        data = '0xFFD70A53';
      case null:
        data = '';
    }
    return data;
  }
}
