import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/header_app_bar.dart';
import 'package:platzi_trips_app/review_list.dart';

class HomeTrip extends StatelessWidget {
  const HomeTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView(
        children: const [
          DescriptionPlaceWidget(
            namePlace: 'Bahamas',
            starsQuantity: 4,
            descriptionPlace:
                'Consequat commodo quis laborum nisi proident ex veniam. Magna velit eu est ex sunt adipisicing commodo reprehenderit laborum. Aute velit officia nisi est et voluptate pariatur Lorem in culpa ut in consectetur qui. Exercitation nisi ullamco cupidatat non excepteur consectetur velit esse est elit. Amet elit irure aute incididunt ea aliqua occaecat aliquip non aliquip qui reprehenderit velit. Ad amet nisi ullamco esse.',
          ),
          ReviewListWidget(),
        ],
      ),
      const HeaderAppBar()
    ]);
  }
}
