import 'package:fitfuel/components/profile/subHeading.dart';
import 'package:fitfuel/components/workout/card.dart';
import 'package:flutter/material.dart';

class ChallengesPage extends StatefulWidget {
  const ChallengesPage({super.key});

  @override
  State<ChallengesPage> createState() => _ChallengesPageState();
}

class _ChallengesPageState extends State<ChallengesPage> {
  List<WorkOutCardData> Workouts = [];
  @override
  void initState() {
    Workouts = [
      WorkOutCardData(
          'Obliq Twist', 'Challenge time: 3 mins', 'assets/images/png/obliqtwist.png'),
      WorkOutCardData('Donkey Kicks', 'Challenge time: 1.5 mins',
          'assets/images/png/donkeykicks.png'),
      WorkOutCardData('Flutter kicks', 'Challenge time: 2 mins',
          'assets/images/png/flutterkicks.png'),
      WorkOutCardData(
          'Wide Squats', 'Challenge count: 50', 'assets/images/png/widedquats.png'),
      WorkOutCardData('Sumo Lunges', 'Challenge count: 25', 'assets/images/png/sumolunges.png'),
      WorkOutCardData('Pushups', 'Challenge count: 17',
          'assets/images/png/pushups.png')
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SubHeadingWidget(subHeading: 'No Equipment Challenge'),
          ),
          const SizedBox(
            height: 20,
          ),
          ...Workouts.map((workout) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: WorkOutCard(
                  maintext: workout.title,
                  subtext: workout.subTitle,
                  imageUrl: workout.image,
                ),
              )).toList(),
        ],
      ),
    );
  }
}
