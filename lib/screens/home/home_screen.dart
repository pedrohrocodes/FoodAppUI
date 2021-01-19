import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ui_app/constants.dart';
import 'package:food_ui_app/screens/details/details_screen.dart';
import 'package:food_ui_app/screens/home/widgets/category_title.dart';
import 'package:food_ui_app/screens/home/widgets/food_card.dart';
import 'package:food_ui_app/screens/home/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(kDefaultPadding / 2),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: kPrimaryColor.withOpacity(.26)),
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset("assets/icons/plus.svg"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding, top: 50),
            child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset("assets/icons/menu.svg", height: 11)),
          ),
          Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Text("Simple way to find \n Tasty food",
                  style: Theme.of(context).textTheme.headline)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(title: "All", active: true),
                CategoryTitle(
                  title: "Italian",
                  active: false,
                ),
                CategoryTitle(
                  title: "Asian",
                  active: false,
                ),
                CategoryTitle(
                  title: "Chinese",
                  active: false,
                ),
                CategoryTitle(
                  title: "Burgers",
                  active: false,
                ),
              ],
            ),
          ),
          SearchBar(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                  press: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DetailsScreen();
                      },
                    ));
                  },
                  title: "Vegan Salad Bowl",
                  image: "assets/images/image_1.png",
                  price: 20,
                  calories: "420Kcal",
                  description:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                ),
                FoodCard(
                  press: () {},
                  title: "Vegan Salad Bowl",
                  image: "assets/images/image_2.png",
                  price: 20,
                  calories: "420Kcal",
                  description:
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
