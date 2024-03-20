import 'package:fitfuel/components/food/ingredientCard.dart';
import 'package:flutter/material.dart';

class IngredientsPage extends StatefulWidget {
  const IngredientsPage({super.key});

  @override
  State<IngredientsPage> createState() => _IngredientsPageState();
}

class _IngredientsPageState extends State<IngredientsPage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SmallCard(
                  image: 'assets/images/png/steelcutoats.png',
                  text: 'Steel cut Oats',
                ),
                SmallCard(
                  image: 'assets/images/png/halfcupwater.png',
                  text: '1/2 cup Water',
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SmallCard(
                  image: 'assets/images/png/halfcupmilk.png',
                  text: '1/2 cup milk',
                ),
                SmallCard(
                  image: 'assets/images/png/cinnamon.png',
                  text: 'Cinnamon',
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SmallCard(
                  image: 'assets/images/png/chiajam.png',
                  text: 'Chia jam',
                ),
                SmallCard(
                  image: 'assets/images/png/peanutbutter.png',
                  text: 'Peanut butter ',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
