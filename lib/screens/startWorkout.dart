import 'package:fitfuel/components/home/mainTitle.dart';
import 'package:fitfuel/components/profile/subHeading.dart';
import 'package:fitfuel/components/workout/biscuit.dart';
import 'package:fitfuel/components/workout/logbutton.dart';
import 'package:fitfuel/components/workout/timer.dart';
import 'package:fitfuel/components/workout/workHeading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StartWorkoutPage extends StatefulWidget {
  const StartWorkoutPage({super.key});

  @override
  State<StartWorkoutPage> createState() => _StartWorkoutPageState();
}

class _StartWorkoutPageState extends State<StartWorkoutPage> {
  String? errorMessage;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const TitleWiget(
                    key: Key("Workout!"), titleText: 'Bench Press'),
                Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/png/benchpress1.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SetWidget(
                  settext: 'Set 1',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BuscuitWidget(
                      text: 'Reps',
                      onSubmit: (String? error) {
                        setState(() {
                          errorMessage = error;
                        });
                        if (error != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error)),
                          );
                        }
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    BuscuitWidget(
                      text: 'Weight',
                      initialValue: '10', // Set the initial value to 10
                      onSubmit: (String? error) {
                        setState(() {
                          errorMessage = error;
                        });
                        if (error != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error)),
                          );
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SetWidget(
                  settext: 'Set 2',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BuscuitWidget(
                      text: 'Reps',
                      onSubmit:(String? error) {
                        setState(() {
                          errorMessage = error;
                        });
                        if (error != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error)),
                          );
                        }
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    BuscuitWidget(
                      text: 'Weight',
                      initialValue: '10', // Set the initial value to 10
                      onSubmit: (String? error) {
                        setState(() {
                          errorMessage = error;
                        });
                        if (error != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error)),
                          );
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SetWidget(
                  settext: 'Set 3',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BuscuitWidget(
                      text: 'Reps',
                      onSubmit: (String? error) {
                        setState(() {
                          errorMessage = error;
                        });
                        if (error != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error)),
                          );
                        }
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    BuscuitWidget(
                      initialValue: '10', // Set the initial value to 10
                      text: 'Weight',
                      onSubmit: (String? error) {
                        setState(() {
                          errorMessage = error;
                        });
                        if (error != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error)),
                          );
                        }
                      },
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SubHeadingWidget(
                        subHeading: 'Rest timer',
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TimerWidget(
                        unit: 'Minutes',
                        time: '01',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TimerWidget(
                        unit: 'Seconds',
                        time: '00',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SetWidget(
                        settext: 'Start Timer',
                      ),
                      SvgPicture.asset(
                        'assets/images/svg/play.svg',
                        semanticsLabel: 'play',
                      ),
                    ],
                  ),
                ),
                LogButtonWidget(
                    text: 'Save and finish', onPressed: () {}, scale: 1)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
