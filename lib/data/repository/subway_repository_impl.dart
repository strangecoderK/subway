import 'package:subway/data/data_source/subway_api.dart';
import 'package:subway/data/mapper/subway_mapper.dart';
import 'package:subway/domain/model/subway.dart';
import 'package:subway/domain/repository/subway_repository.dart';

class SubwayRepositoryImpl implements SubwayRepository {
  final SubwayApi dataSource;

  const SubwayRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<List<Subway>> getSubwayInfo(String query) async {
    final result = await dataSource.getArrivalList(query);
    return result.map((e) => e.dtoToModel()).toList();
  }
}
