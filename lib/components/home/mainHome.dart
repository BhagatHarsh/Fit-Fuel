import 'package:flutter/material.dart';
import 'package:fitfuel/components/home/landScapeCard.dart';
import 'package:fitfuel/components/home/mainTitle.dart';
import './card.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);
  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  late List<PhotoCardData> photoCards;
  late List<LandscapeCardData> landscapeCards;

  @override
  void initState() {
    super.initState();
    photoCards = [
      PhotoCardData(
          text: 'Yoga for Beginners',
          textUnder: '15min • Intermediate',
          imageUrl: 'assets/images/png/yogaPose.png',
          key: const Key("1")),
      PhotoCardData(
          text: 'Strength Training: Legs',
          textUnder: '45min • Advanced',
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const TitleWiget(key: Key("1"), titleText: 'Pick a workout'),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
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
                const SizedBox(height: 20),
                const TitleWiget(key: Key("7"), titleText: 'Fitness Programs'),
                const SizedBox(height: 20),
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
