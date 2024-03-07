import 'package:fitfuel/components/footer/footer.dart';
import 'package:fitfuel/components/landScapeCard.dart';
import 'package:fitfuel/components/mainTitle.dart';
import 'package:fitfuel/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../components/card.dart';

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
        backgroundColor: const Color.fromRGBO(160, 124, 28, 1),
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/images/bell.svg',
                semanticsLabel: 'bell'),
            onPressed: () {},
          )
        ],
      ),
      body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NavBar(),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    TitleWiget(
                      key: Key("1"),
                      titleText: 'Pick a workout',
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
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
                          SizedBox(
                            width: 20,
                          ),
                          photoCard(
                            textunder: 'Yoga for Beginners',
                            text: '15min • Intermediate',
                            imageUrl: 'assets/images/yogaPose.png',
                            key: Key("3"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          photoCard(
                            textunder: 'Strength Training: Legs',
                            text: '45min • Advanced',
                            imageUrl: 'assets/images/strengthTraining.png',
                            key: Key("4"),
                          ),
                        ],
                      ),
                    ),
                    TitleWiget(
                      key: Key("7"),
                      titleText: 'Fitness Programs',
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        children: [
                          landScapeCard(
                            key: Key("1"),
                            imageUrl: 'assets/images/SunRise.png',
                            text: 'Yoga during sunrise',
                            textunder: 'Intermediate',
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          landScapeCard(
                            key: Key("2"),
                            imageUrl: 'assets/images/benchpress.png',
                            text: 'Power Lifting',
                            textunder: 'Advanced',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FooterWidget(),
          ]),
    );
  }
}
