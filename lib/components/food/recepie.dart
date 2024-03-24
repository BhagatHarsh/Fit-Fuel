import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fitfuel/components/food/ingredients.dart';
import 'package:fitfuel/components/food/process.dart';
import 'package:fitfuel/components/home/mainTitle.dart';
import 'package:fitfuel/components/workout/change.dart';
import 'package:fitfuel/components/profile/subHeading.dart';

class RecepiePage extends StatefulWidget {
  const RecepiePage({Key? key}) : super(key: key);

  @override
  State<RecepiePage> createState() => _RecepiePageState();
}

class _RecepiePageState extends State<RecepiePage> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: SubHeadingWidget(
            subHeading: 'Recepie',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset('assets/images/svg/basket.svg',
                  semanticsLabel: 'cart'),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TitleWiget(
              titleText: 'OatMeal',
              key: Key("Food!"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    _pageController.animateToPage(
                      0,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const ChangeButton(
                    text: 'Ingredients',
                    scale: 0.3,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    _pageController.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const ChangeButton(
                    text: 'Process',
                    scale: 0.2,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(), // Disable swiping
              onPageChanged: (index) {},
              children: const [
                IngredientsPage(),
                ProcessPage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
