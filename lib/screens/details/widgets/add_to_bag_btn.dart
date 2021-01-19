import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ui_app/constants.dart';

class AddToBagButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding + 27),
      decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(.19),
          borderRadius: BorderRadius.circular(27)),
      child: Row(
        children: [
          Text(
            "Add to bag",
            style: Theme.of(context).textTheme.button,
          ),
          SizedBox(
            width: kDefaultPadding + 10,
          ),
          SvgPicture.asset(
            "assets/icons/forward.svg",
            height: 11,
          )
        ],
      ),
    );
  }
}
