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
      child: Column(
        children: [
          Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlg2uy5Yxb0bZc3J5N-61h5E-vkKwvC5To5g&s',height: 150,),
          Text(subway.trainLineName),
          Text(subway.message),
        ],
      ),
    );
  }
}
