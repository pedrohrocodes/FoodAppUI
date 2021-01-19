import 'package:flutter/material.dart';
import 'package:food_ui_app/constants.dart';

class BigLightBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 0,
        bottom: 0,
        child: Container(
          height: 380,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34),
              color: kPrimaryColor.withOpacity(.06)),
        ));
  }
}
