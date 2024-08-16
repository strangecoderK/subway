import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway/domain/model/subway.dart';
import 'package:subway/presentation/component/subway_card.dart';
import 'package:subway/presentation/screen/main__page_view_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

const subway = Subway(
  stationName: 'Gangnam',
  subwayId: '1002',
  trainLineName: 'Line 2',
  message: 'The train is arriving soon.',
);

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainPageViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('지하철 실시간 정보'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SubwayCard(subway: state.subwayList[index]);
                }),
          )
        ],
      ),
    );
  }
}
