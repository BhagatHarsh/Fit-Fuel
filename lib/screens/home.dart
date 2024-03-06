import 'package:fitfuel/components/mainTitle.dart';
import 'package:fitfuel/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../components/Card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/images/vector0.svg',
                semanticsLabel: 'vector0'),
            onPressed: () {},
          )
        ],
      ),
      body: const Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NavBar(),
              TitleWiget(
                key: Key("1"),
                titleText: 'Pick a workout',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  photoCard(
                    textunder: 'Yoga for Beginners',
                    text: '15min • Intermediate',
                    imageUrl: 'assets/images/yogaPose.png',
                    key: Key("1"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  photoCard(
                    textunder: 'Strength Training: Legs',
                    text: '45min • Advanced',
                    imageUrl: 'assets/images/strengthTraining.png',
                    key: Key("2"),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
