import 'package:fitfuel/components/home/navbar.dart';
import 'package:flutter/material.dart';
import 'package:fitfuel/components/home/landScapeCard.dart';
import 'package:fitfuel/components/home/mainTitle.dart';
import '../components/home/card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<PhotoCardData> photoCards;
  late List<LandscapeCardData> landscapeCards;

  @override
  void initState() {
    super.initState();
    photoCards = [
      PhotoCardData(
          textUnder: 'Yoga for Beginners',
          text: '15min • Intermediate',
          imageUrl: 'assets/images/png/yogaPose.png',
          key: const Key("1")),
      PhotoCardData(
          textUnder: 'Strength Training: Legs',
          text: '45min • Advanced',
          imageUrl: 'assets/images/png/strengthTraining.png',
          key: const Key("2")),
    ];
    landscapeCards = [
      LandscapeCardData(
          text: 'Wheelchair workout',
          textUnder: 'Intermediate',
          imageUrl: 'assets/images/png/wheelChair.png',
          key: const Key("1")),
      LandscapeCardData(
          text: 'Power Lifting',
          textUnder: 'Advanced',
          imageUrl: 'assets/images/png/benchpress.png',
          key: const Key("2")),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const NavBar(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const TitleWiget(key: Key("1"), titleText: 'Pick a workout'),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: photoCards
                          .expand((card) => [
                                photoCard(
                                  textunder: card.textUnder,
                                  text: card.text,
                                  imageUrl: card.imageUrl,
                                  key: card.key,
                                ),
                                const SizedBox(
                                  width: 20,
                                )
                              ])
                          .toList(),
                    ),
                  ),
                  const TitleWiget(
                      key: Key("7"), titleText: 'Fitness Programs'),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: landscapeCards
                          .expand((card) => [
                                landScapeCard(
                                  key: card.key,
                                  imageUrl: card.imageUrl,
                                  text: card.text,
                                  textunder: card.textUnder,
                                ),
                                const SizedBox(
                                  width: 20,
                                )
                              ])
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
  }
}
