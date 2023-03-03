import 'package:flutter/material.dart';
import 'package:platzi_trips_app/button_purple.dart';

class DescriptionPlaceWidget extends StatelessWidget {
  final String namePlace;
  final int starsQuantity;
  final String descriptionPlace;

  const DescriptionPlaceWidget(
      {super.key,
      required this.namePlace,
      required this.starsQuantity,
      required this.descriptionPlace});

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(top: 323, right: 3),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    // final starHalf = Container(
    //   margin: const EdgeInsets.only(top: 323, right: 3),
    //   child: const Icon(
    //     Icons.star_half,
    //     color: Color(0xFFf2c611),
    //   ),
    // );

    final starBorder = Container(
      margin: const EdgeInsets.only(top: 323, right: 3),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2c611),
      ),
    );

    final titleStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, star, starBorder],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Text(descriptionPlace,
          style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF56577a))),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        const ButtonPurple(),
      ],
    );
  }
}
