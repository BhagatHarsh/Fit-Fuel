import 'package:fitfuel/components/every/responsive.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final int selected; 
  final Function(int) onIconSelected;
  const NavBar({super.key, required this.selected, required this.onIconSelected});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
              widget.onIconSelected(0);
            },
            child: Text(
              'Home',
              textAlign: TextAlign.center,
              textScaleFactor: ScaleSize.textScaleFactor(context),
              style: TextStyle(
                color: widget.selected == 0 ? selectedColor : unSelectedColor,
                fontFamily: widget.selected == 0 ? 'LexendBold' : 'LexendMedium',
                fontSize: 14,
                letterSpacing: 0.20999999344348907,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onIconSelected(1);
            },
            child: Text(
              'Challenges',
              textAlign: TextAlign.center,
              textScaleFactor: ScaleSize.textScaleFactor(context),
              style: TextStyle(
                color: widget.selected == 1  ? selectedColor : unSelectedColor,
                fontFamily: widget.selected == 1 ? 'LexendBold' : 'LexendMedium',
                fontSize: 14,
                letterSpacing: 0.20999999344348907,
                fontWeight: FontWeight.normal,
                height: 1.5,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onIconSelected(2);
            },
            child: Text(
              'Join',
              textAlign: TextAlign.center,
              textScaleFactor: ScaleSize.textScaleFactor(context),
              style: TextStyle(
                color: widget.selected == 2 ? selectedColor : unSelectedColor,
                fontFamily: widget.selected == 2 ? 'LexendBold' : 'LexendMedium',
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
