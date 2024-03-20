import 'package:fitfuel/components/food/recepie.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          const TitleWiget(
            key: Key('foodTitle'),
            titleText: 'Top Categories',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      // Handle tap event for 'Breakfast'
                    },
                    child: const ChangeButton(
                      text: 'Breakfast',
                      scale: 0.25,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      // Handle tap event for 'Lunch'
                    },
                    child: const ChangeButton(
                      text: 'Lunch',
                      scale: 0.2,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      // Handle tap event for 'Dinner'
                    },
                    child: const ChangeButton(
                      text: 'Dinner',
                      scale: 0.2,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      // Handle tap event for 'Sugar Free'
                    },
                    child: const ChangeButton(
                      text: 'Sugar Free',
                      scale: 0.3,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      // Handle tap event for 'Low Calories'
                    },
                    child: const ChangeButton(
                      text: 'Low Calories',
                      scale: 0.3,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      // Handle tap event for 'Vegetarian'
                    },
                    child: const ChangeButton(
                      text: 'Vegetarian',
                      scale: 0.3,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      // Handle tap event for 'Snack'
                    },
                    child: const ChangeButton(
                      text: 'Snack',
                      scale: 0.2,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      // Handle tap event for 'Salad'
                    },
                    child: const ChangeButton(
                      text: 'Salad',
                      scale: 0.2,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      // Handle tap event for 'Soups'
                    },
                    child: const ChangeButton(
                      text: 'Soups',
                      scale: 0.2,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RecepiePage(),
                          ),
                        );
                      },
                      child: const photoCard(
                        key: Key("f1"),
                        text: 'Oatmeal',
                        textunder: 'Calories: 300, Time: 5min',
                        imageUrl: 'assets/images/png/oatmeal.png',
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const photoCard(
                      key: Key("f2"),
                      text: 'Pancakes',
                      textunder: 'Calories: 400, Time: 10min',
                      imageUrl: 'assets/images/png/pancakes.png',
                    ),
                  ]),
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
