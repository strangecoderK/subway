import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway/presentation/component/subway_card.dart';
import 'package:subway/presentation/screen/main__page_view_model.dart';

import '../component/search_text_field.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}



class _MainPageState extends State<MainPage> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Search(
                    hintText: '지하철역을 입력하세요',
                    controller: controller,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          viewModel.searchSubway(controller.text);
                        },
                        child: const Text(
                          '조회',
                        )),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  itemCount: state.subwayList.length,
                  itemBuilder: (context, index) {
                    return SubwayCard(subway: state.subwayList[index]);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
