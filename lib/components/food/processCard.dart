import 'package:fitfuel/components/profile/subsubHeading.dart';
import 'package:flutter/material.dart';

class LargeCard extends StatefulWidget {
  final String image;
  final String text;
  const LargeCard({super.key, required this.image, required this.text});

  @override
  State<LargeCard> createState() => SLargeCardState();
}

class SLargeCardState extends State<LargeCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Image.asset(
          widget.image,
          width: width * 0.8,
        ),
        const SizedBox(
          height: 10,
        ),
        SubSubHeadingWidget(
          subsubHeading: widget.text,
        ),
      ],
    );
  }
}
