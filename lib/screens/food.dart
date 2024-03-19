import 'package:fitfuel/components/home/card.dart';
import 'package:fitfuel/components/home/mainTitle.dart';
import 'package:fitfuel/components/workout/change.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TitleWiget(
            key: Key('foodTitle'),
            titleText: 'Top Categories',
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChangeButton(
                    text: 'Breakfast',
                    scale: 0.25,
                    height: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ChangeButton(
                    text: 'Lunch',
                    scale: 0.2,
                    height: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ChangeButton(
                    text: 'Dinner',
                    scale: 0.2,
                    height: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ChangeButton(
                    text: 'Sugar Free',
                    scale: 0.3,
                    height: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ChangeButton(
                    text: 'Low Calories',
                    scale: 0.3,
                    height: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ChangeButton(
                    text: 'Vegetarian',
                    scale: 0.3,
                    height: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ChangeButton(
                    text: 'Snack',
                    scale: 0.2,
                    height: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ChangeButton(
                    text: 'Salad',
                    scale: 0.2,
                    height: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ChangeButton(
                    text: 'Soups',
                    scale: 0.2,
                    height: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                            photoCard(
                  key: Key("f1"),
                  text: 'Oatmeal',
                  textunder: 'Calories: 300, Time: 5min',
                  imageUrl: 'assets/images/png/oatmeal.png',
                            ),
                            SizedBox(
                  width: 20,
                            ),
                            photoCard(
                  key: Key("f2"),
                  text: 'Pancakes',
                  textunder: 'Calories: 400, Time: 10min',
                  imageUrl: 'assets/images/png/pancakes.png',
                            ),
                          ]),
                ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                            photoCard(
                  key: Key("f3"),
                  text: 'Waffles',
                  textunder: 'Calories: 350, Time: 8min',
                  imageUrl: 'assets/images/png/waffels.png',
                            ),
                            SizedBox(
                  width: 20,
                            ),
                            photoCard(
                  key: Key("f4"),
                  text: 'Sushi',
                  textunder: 'Calories: 350, Time: 8min',
                  imageUrl: 'assets/images/png/sushi.png',
                            ),
                          ]),
                ),
          ),
        ],
      ),
    );
  }
}
