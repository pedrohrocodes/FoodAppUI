import 'package:flutter/material.dart';
import 'package:food_ui_app/constants.dart';

class FoodImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      padding: EdgeInsets.all(6),
      height: 305,
      width: 305,
      decoration: BoxDecoration(shape: BoxShape.circle, color: kSecondaryColor),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/image_1_big.png"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
