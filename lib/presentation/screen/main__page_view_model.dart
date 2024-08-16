import 'package:flutter/material.dart';
import 'package:subway/domain/repository/subway_repository.dart';
import 'package:subway/presentation/screen/subway_state.dart';

class MainPageViewModel with ChangeNotifier {
  final SubwayRepository _repository;

  MainPageViewModel({
    required SubwayRepository repository,
  }) : _repository = repository;

  SubwayState _state = const SubwayState();

  SubwayState get state => _state;

  void searchSubway(String query) async {
    final data = await _repository.getSubwayInfo(query);
    _state = state.copyWith(subwayList: data);
    notifyListeners();
  }
}
