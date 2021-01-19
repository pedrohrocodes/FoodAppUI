import 'package:flutter/material.dart';
import 'package:food_ui_app/constants.dart';

class RoundedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      child: Container(
        height: 181,
        width: 181,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: kPrimaryColor.withOpacity(.15)),
      ),
    );
  }
}
