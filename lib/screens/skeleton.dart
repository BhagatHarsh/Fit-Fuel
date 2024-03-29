import 'package:fitfuel/components/every/button.dart';
import 'package:fitfuel/screens/food.dart';
import 'package:fitfuel/screens/profile.dart';
import 'package:fitfuel/screens/workout.dart';
import 'package:flutter/material.dart';
import 'package:fitfuel/components/footer/footer.dart';
import 'package:fitfuel/screens/home.dart';

class SkeletonPage extends StatefulWidget {
  const SkeletonPage({super.key});

  @override
  State<SkeletonPage> createState() => _SkeletonPageState();
}

class _SkeletonPageState extends State<SkeletonPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<String> _screens = [
    'Fit Fuel',
    'Workout Plan',
    'Food',
    'Profile',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(160, 124, 28, 1),
        title: Text(_screens[_currentIndex]),
        actions: [
          NavBarButton(key: const Key("navBarButton"), selected: _currentIndex),
        ],
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(), // Disable swiping
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const <Widget>[
          MyHomePage(),
          WorkOutPage(),
          FoodPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: FooterWidget(
        onIconSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}
