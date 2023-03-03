import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewListWidget extends StatelessWidget {
  const ReviewListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ReviewWidget(),
        ReviewWidget(),
        ReviewWidget(),
        ReviewWidget()
      ],
    );
  }
}
