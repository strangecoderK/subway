import 'package:flutter/material.dart';
import 'package:subway/domain/model/subway.dart';

class SubwayCard extends StatelessWidget {
  final Subway subway;

  const SubwayCard({super.key, required this.subway});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Color(int.parse(subway.color)),
                    borderRadius: BorderRadius.circular(60)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    subway.subwayId,
                    style: const TextStyle(color: Colors.white),
                  ),
                )),
          ),
          Text(subway.trainLineName),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(subway.message),
          ),
        ],
      ),
    );
  }
}
