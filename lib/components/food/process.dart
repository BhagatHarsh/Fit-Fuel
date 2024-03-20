import 'package:fitfuel/components/food/processCard.dart';
import 'package:flutter/material.dart';

class ProcessPage extends StatefulWidget {
  const ProcessPage({super.key});

  @override
  State<ProcessPage> createState() => _ProcessPageState();
}

class _ProcessPageState extends State<ProcessPage> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          LargeCard(
            image: 'assets/images/png/fourthcupwater.png',
            text: 'Pour 1/4 cup of water to roasted oats',
          ),
          SizedBox(
            height: 15,
          ),
          LargeCard(
            image: 'assets/images/png/halfcupmilktowater.png',
            text: 'Add 1/2 cup of milk to the mixture',
          ),
          SizedBox(
            height: 15,
          ),
          LargeCard(
            image: 'assets/images/png/fourthcupwater.png',
            text: 'Stir the mixture well',
          ),
           SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
