import 'package:fitfuel/components/profile/age.dart';
import 'package:fitfuel/components/profile/subHeading.dart';
import 'package:fitfuel/components/profile/subsubHeading.dart';
import 'package:fitfuel/components/workout/card.dart';
import 'package:fitfuel/components/workout/change.dart';
import 'package:fitfuel/components/workout/logbutton.dart';
import 'package:flutter/material.dart';

class WorkOutPage extends StatefulWidget {
  const WorkOutPage({super.key});

  @override
  State<WorkOutPage> createState() => _WorkOutPageState();
}

class _WorkOutPageState extends State<WorkOutPage> {
  List<WorkOutCardData> Workouts = [];
  @override
  void initState() {
    Workouts = [
      WorkOutCardData(
          'Bent Over Row', 'Back, Biceps', 'assets/images/png/bentOverRow.png'),
      WorkOutCardData('Incline Dumbell Press', 'Chest, Triceps',
          'assets/images/png/inclineDumbelPress.png'),
      WorkOutCardData('Seated Military Press', 'Shoulders',
          'assets/images/png/seatedMilitaryPress.png'),
      WorkOutCardData(
          'Tricep Dips', 'Triceps', 'assets/images/png/tricepDips.png'),
      WorkOutCardData('Squats', 'Legs', 'assets/images/png/squats.png'),
      WorkOutCardData('Mermaid Abdominal', 'Shoulders',
          'assets/images/png/mermaidAbdominal.png')
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubSubHeadingWidget(subsubHeading: '6 weeks to Lean body'),
                    AgeButtonWidget(age: '6 Workouts')
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                ChangeButton()
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: SubHeadingWidget(
              subHeading: 'Day 1',
            ),
          ),
          ...Workouts.map((workout) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: WorkOutCard(
                  maintext: workout.title,
                  subtext: workout.subTitle,
                  imageUrl: workout.image,
                ),
              )).toList(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                LogButtonWidget(
                  text: 'Start Log Day 1',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
