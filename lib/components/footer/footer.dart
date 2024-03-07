import 'package:fitfuel/components/footer/icons.dart';
import 'package:flutter/material.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10.0), // Add padding here
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              selected = 1;
              setState(() {});
            },
            child: IconContainer(
              key: const Key("1"),
              iconName: 'Home',
              iconPath: 'assets/images/home.svg',
              selected: selected == 1,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              selected = 2;
              setState(() {});
            },
            child: IconContainer(
              key: const Key("2"),
              iconName: 'Workout',
              iconPath: 'assets/images/workout.svg',
              selected: selected == 2,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              selected = 3;
              setState(() {});
            },
            child: IconContainer(
              key: const Key("3"),
              iconName: 'Food',
              iconPath: 'assets/images/food.svg',
              selected: selected == 3,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              selected = 4;
              setState(() {});
            },
            child: IconContainer(
              key: const Key("4"),
              iconName: 'Profile',
              iconPath: 'assets/images/profile.svg',
              selected: selected == 4,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
