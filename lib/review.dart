import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  final String pathImage = "assets/img/profilePhoto.jpeg";
  final String name = "Varuna Yasas";
  final details = "1 review 5 photos";
  final comment = "There is an amazing place in Sri Lanka";

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          )),
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 17, fontFamily: "Lato"),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [userName, userInfo, userComment],
    );

    return Row(
      children: [photo, userDetails],
    );
  }
}
