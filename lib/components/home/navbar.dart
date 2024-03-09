import 'package:fitfuel/components/every/responsive.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedItem = 1;
  Color selectedColor = const Color.fromRGBO(33, 25, 10, 1);
  Color unSelectedColor = const Color.fromRGBO(160, 124, 28, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      color: const Color.fromARGB(0, 237, 245, 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 1;
              });
            },
            child: Text(
              'Home',
              textAlign: TextAlign.center,
              textScaleFactor: ScaleSize.textScaleFactor(context),
              style: TextStyle(
                color: selectedItem == 1 ? selectedColor : unSelectedColor,
                fontFamily: selectedItem == 1 ? 'LexendBold' : 'LexendMedium',
                fontSize: 14,
                letterSpacing: 0.20999999344348907,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 2;
              });
            },
            child: Text(
              'Challenges',
              textAlign: TextAlign.center,
              textScaleFactor: ScaleSize.textScaleFactor(context),
              style: TextStyle(
                color: selectedItem == 2 ? selectedColor : unSelectedColor,
                fontFamily: selectedItem == 2 ? 'LexendBold' : 'LexendMedium',
                fontSize: 14,
                letterSpacing: 0.20999999344348907,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 3;
              });
            },
            child: Text(
              'Join',
              textAlign: TextAlign.center,
              textScaleFactor: ScaleSize.textScaleFactor(context),
              style: TextStyle(
                color: selectedItem == 3 ? selectedColor : unSelectedColor,
                fontFamily: selectedItem == 3 ? 'LexendBold' : 'LexendMedium',
                fontSize: 14,
                letterSpacing: 0.20999999344348907,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
