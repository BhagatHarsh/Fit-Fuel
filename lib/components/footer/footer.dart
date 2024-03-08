import 'package:flutter/material.dart';
import 'package:fitfuel/components/footer/icons.dart';

class FooterWidget extends StatefulWidget {
 const FooterWidget({Key? key}) : super(key: key);

 @override
 _FooterWidgetState createState() => _FooterWidgetState();
}

class IconData {
 final String name;
 final String path;
 final Key key;

 IconData({required this.name, required this.path, required this.key});
}

class _FooterWidgetState extends State<FooterWidget> {
 int selected = 1;
 late List<IconData> icons;

 @override
 void initState() {
    super.initState();
    icons = [
      IconData(name: 'Home', path: 'assets/images/svg/home.svg', key: const Key("1")),
      IconData(name: 'Workout', path: 'assets/images/svg/workout.svg', key: const Key("2")),
      IconData(name: 'Food', path: 'assets/images/svg/food.svg', key: const Key("3")),
      IconData(name: 'Profile', path: 'assets/images/svg/profile.svg', key: const Key("4")),
    ];
 }

 @override
 Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 20,
          ),
          ...icons.map((icon) => GestureDetector(
                onTap: () {
                 setState(() {
                    selected = icons.indexOf(icon) + 1;
                 });
                },
                child: IconContainer(
                 key: icon.key,
                 iconName: icon.name,
                 iconPath: icon.path,
                 selected: selected == icons.indexOf(icon) + 1,
                ),
              )).toList(),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
 }
}
