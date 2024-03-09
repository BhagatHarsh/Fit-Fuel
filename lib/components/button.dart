import 'package:fitfuel/screens/dummy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarButton extends StatefulWidget {
 final int selected;
 const NavBarButton({required Key key, required this.selected}) : super(key: key);

 @override
 State<NavBarButton> createState() => NavBarButtonState();
}

class NavBarButtonState extends State<NavBarButton> {
 @override
 Widget build(BuildContext context) {
    // Define the icons for each page
    final Map<int, String> icons = {
      0: 'assets/images/svg/bell.svg',
      1: 'assets/images/svg/bell.svg',
      2: 'assets/images/svg/basket.svg',
      3: 'assets/images/svg/settings.svg',
    };

    // Define the navigation actions for each page
    final Map<int, VoidCallback> actions = {
      0: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DummyPage())),
      1: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DummyPage())),
      2: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DummyPage())),
      3: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DummyPage())),
    };

    // Get the icon path and action for the selected page
    final String iconPath = icons[widget.selected] ?? 'assets/images/svg/bell.svg'; 
    final VoidCallback action = actions[widget.selected] ?? (() => {});

    return IconButton(
      icon: SvgPicture.asset(iconPath, semanticsLabel: 'Action Icon'),
      onPressed: action,
    );
 }
}
