import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: const [
          CardImage(),
          CardImage(),
          CardImage(),
        ],
      ),
    );
  }
}
