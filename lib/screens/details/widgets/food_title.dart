import 'package:flutter/material.dart';
import 'package:food_ui_app/constants.dart';

class FoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "Vegan Salad Bow\n",
              style: Theme.of(context).textTheme.title),
          TextSpan(
              text: "With Red Tomato",
              style: TextStyle(color: kTextColor.withOpacity(.5))),
        ])),
        Text(
          "\$20",
          style: Theme.of(context)
              .textTheme
              .headline
              .copyWith(color: kPrimaryColor),
        )
      ],
    );
  }
}
