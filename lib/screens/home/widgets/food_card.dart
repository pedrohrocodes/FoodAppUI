import 'package:flutter/material.dart';
import 'package:food_ui_app/constants.dart';
import 'package:food_ui_app/screens/home/widgets/big_light_background.dart';
import 'package:food_ui_app/screens/home/widgets/food_image.dart';
import 'package:food_ui_app/screens/home/widgets/price.dart';
import 'package:food_ui_app/screens/home/widgets/rounded_background.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;

  const FoodCard(
      {Key key,
      this.title,
      this.ingredient,
      this.image,
      this.price,
      this.calories,
      this.description,
      this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: kDefaultPadding),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            BigLightBackground(),
            RoundedBackground(),
            FoodImage(
              image: image,
            ),
            Price(price: price),
            Positioned(
              top: 201,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      "With $ingredient",
                      style: TextStyle(color: kTextColor.withOpacity(.4)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(color: kTextColor.withOpacity(.65)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(calories)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
