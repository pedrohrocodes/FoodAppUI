import 'package:flutter/material.dart';
import 'package:food_ui_app/constants.dart';
import 'package:food_ui_app/screens/details/widgets/add_to_bag_btn.dart';
import 'package:food_ui_app/screens/details/widgets/bag_image_buttom.dart';

class BagBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding + 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [AddToBagButtom(), BagImageButton()],
      ),
    );
  }
}
