import 'package:flutter/material.dart';
import 'package:food_ui_app/constants.dart';
import 'package:food_ui_app/screens/details/widgets/bag_bottom_bar.dart';
import 'package:food_ui_app/screens/details/widgets/food_image.dart';
import 'package:food_ui_app/screens/details/widgets/food_title.dart';
import 'package:food_ui_app/screens/details/widgets/top_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            top: kDefaultPadding),
        child: Column(
          children: [
            TopBar(),
            FoodImage(),
            FoodTitle(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
            ),
            Spacer(),
            BagBottomBar()
          ],
        ),
      ),
    );
  }
}
