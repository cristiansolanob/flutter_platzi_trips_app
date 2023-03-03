import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/card_image_list.dart';
import 'package:platzi_trips_app/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBack(),
        CardImageList(),
      ],
    );
  }
}
