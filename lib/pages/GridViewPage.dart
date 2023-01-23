import 'package:flutter/material.dart';
import 'package:soccer_app/main.dart';

import '../widgets/BigCard.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'https://www.memes-graciosos.com/images/2019/03/28/momos-shidos-25.jpg',
      'https://i.pinimg.com/originals/17/6b/be/176bbe9fce4d61438be08daabf6f64ba.jpg',
      'https://i.pinimg.com/736x/32/66/4b/32664b5f2e37f7941874d16dd7c78674.jpg',
      'https://pm1.narvii.com/6493/7bcfe4c14a048750d3befbf6611a823ef93d82d7_hq.jpg',
      'https://i.pinimg.com/originals/17/6b/be/176bbe9fce4d61438be08daabf6f64ba.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMXoP8z9nwidwfj23RuvV3ESLtw_0gGj8-fw&usqp=CAU',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Momazos el diego'),
          ],
        ),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            ...images.map((image) => BigCard(image: image)).toList(),
          ],
        ),
      ),
    );
  }
}
