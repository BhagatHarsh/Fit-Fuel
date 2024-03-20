import 'package:fitfuel/components/home/challenges.dart';
import 'package:fitfuel/components/home/join.dart';
import 'package:flutter/material.dart';
import 'package:fitfuel/components/home/mainHome.dart';
import 'package:fitfuel/components/home/navbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedScreen = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBar(
              selected: _selectedScreen,
              onIconSelected: (index) {
                setState(() {
                  _selectedScreen = index;
                });
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics:
                    const NeverScrollableScrollPhysics(), // Disable swiping
                onPageChanged: (index) {
                  setState(() {
                    _selectedScreen = index;
                  });
                },
                children: const [MainHomePage(), ChallengesPage(), JoinPage()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
