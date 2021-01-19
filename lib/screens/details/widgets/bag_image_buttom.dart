import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ui_app/constants.dart';

class BagImageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: kPrimaryColor.withOpacity(.26)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            height: 60,
            width: 60,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
            child: SvgPicture.asset("assets/icons/bag.svg"),
          ),
          Positioned(
            right: 15,
            bottom: 10,
            child: Container(
              alignment: Alignment.center,
              height: 28,
              width: 28,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kWhiteColor),
              child: Text(
                "0",
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: kPrimaryColor, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
