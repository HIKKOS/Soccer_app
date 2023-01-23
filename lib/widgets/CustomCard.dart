import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: FadeInImage.assetNetwork(
          placeholder: 'images/loading.gif', image: image, fit: BoxFit.cover),
    );
  }
}
