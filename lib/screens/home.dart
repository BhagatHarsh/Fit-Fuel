import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fitfuel/components/footer/footer.dart';
import 'package:fitfuel/components/landScapeCard.dart';
import 'package:fitfuel/components/mainTitle.dart';
import 'package:fitfuel/components/navbar.dart';
import '../components/card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class PhotoCardData {
  final String textUnder;
  final String text;
  final String imageUrl;
  final Key key;

  PhotoCardData(
      {required this.textUnder,
      required this.text,
      required this.imageUrl,
      required this.key});
}

class LandscapeCardData {
  final String text;
  final String textUnder;
  final String imageUrl;
  final Key key;

  LandscapeCardData(
      {required this.text,
      required this.textUnder,
      required this.imageUrl,
      required this.key});
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(160, 124, 28, 1),
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/images/svg/bell.svg',
                semanticsLabel: 'bell'),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
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
          const FooterWidget(),
        ],
      ),
    );
  }
}
