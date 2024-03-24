import 'package:fitfuel/components/home/mainTitle.dart';
import 'package:fitfuel/components/profile/subHeading.dart';
import 'package:fitfuel/components/workout/biscuit.dart';
import 'package:fitfuel/components/workout/logbutton.dart';
import 'package:fitfuel/components/workout/workHeading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';

class StartWorkoutPage extends StatefulWidget {
  const StartWorkoutPage({super.key});

  @override
  State<StartWorkoutPage> createState() => _StartWorkoutPageState();
}

class _StartWorkoutPageState extends State<StartWorkoutPage> {
  String? errorMessage;
  bool isSet1Filled = false; // Track if SET1 is filled
  Timer? _timer;
  int _start = 60; // Default countdown in seconds (1 minute)
  String _minutesInput = '1'; // Default minutes input
  String _secondsInput = '0'; // Default seconds input

  void startTimer() {
    int minutes = int.tryParse(_minutesInput) ?? 0;
    int seconds = int.tryParse(_secondsInput) ?? 0;
    if (minutes < 0 || seconds < 0 || seconds > 59) {
      setState(() {
        errorMessage =
            "Invalid time input. Please enter a valid time in minutes and seconds.";
      });
      return;
    }
    _start = minutes * 60 + seconds; // Convert minutes and seconds to seconds
    print('Starting timer with duration: $_start seconds'); // Debug print

    const oneSec = Duration(seconds: 1);
    _timer?.cancel(); // Ensure the timer is cancelled before restarting
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            timer.cancel();
            // Show an alert when the timer reaches zero
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Time\'s up!'),
                  content: const Text('Your rest timer has finished.'),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          } else {
            _start--;
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    int minutes = _start ~/ 60;
    int seconds = _start % 60;
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
                      initialValue: '10',
                      onSubmit: (String? error) {
                        setState(() {
                          errorMessage = error;
                          isSet1Filled = error ==
                              null; // Update isSet1Filled based on error
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
                          isSet1Filled = error ==
                              null; // Update isSet1Filled based on error
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
                      initialValue: '10',
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
                      initialValue: '10',
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
                        subHeading: 'Rest timer input',
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BuscuitWidget(
                      text: 'Minutes',
                      initialValue: _minutesInput,
                      onSubmit: (String? value) {
                        setState(() {
                          _minutesInput =
                              value!; // Update _minutesInput if there's no error
                          isSet1Filled = value.isNotEmpty &&
                              int.tryParse(value) !=
                                  null; // Update isSet1Filled based on the validity of the input
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    BuscuitWidget(
                      text: 'Seconds',
                      initialValue: _secondsInput,
                      onSubmit: (String? value) {
                        setState(() {
                          _secondsInput =
                              value!; // Update _secondsInput if there's no error
                          isSet1Filled = value.isNotEmpty &&
                              int.tryParse(value) !=
                                  null; // Update isSet1Filled based on the validity of the input
                        });
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BuscuitWidget(text: '$minutes', onSubmit: (val) {}),
                      const SizedBox(
                        width: 10,
                      ),
                      BuscuitWidget(text: '$seconds', onSubmit: (val) {}),
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
                      ElevatedButton(
                        onPressed: isSet1Filled
                            ? () {
                                startTimer();
                              }
                            : null,
                        child: SvgPicture.asset(
                          'assets/images/svg/play.svg',
                          semanticsLabel: 'play',
                        ),
                      ),
                    ],
                  ),
                ),
                LogButtonWidget(
                    text: 'Save and finish',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    scale: 1)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
