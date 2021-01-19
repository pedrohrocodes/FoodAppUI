import 'package:flutter/material.dart';
import 'package:food_ui_app/constants.dart';

class Price extends StatelessWidget {
  final int price;

  const Price({Key key, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 20,
        top: 80,
        child: Text("\$$price",
            style: Theme.of(context).textTheme.headline.copyWith(
                  color: kPrimaryColor,
                )));
  }
}
