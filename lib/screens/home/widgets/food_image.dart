import 'package:flutter/material.dart';

class FoodImage extends StatelessWidget {
  final String image;

  const FoodImage({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: -50,
      child: Container(
        height: 184,
        width: 276,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(image))),
      ),
    );
  }
}
