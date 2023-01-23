import 'package:flutter/material.dart';
import 'package:soccer_app/widgets/CustomCard.dart';

class BigCard extends StatelessWidget {
  final String image;

  const BigCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SnackBar snackbar = SnackBar(
          content: Text(image),
          duration: Duration(seconds: 1),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      },
      child: CustomCard(image: image),
    );
  }
}
