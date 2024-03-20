import 'package:fitfuel/components/profile/subsubHeading.dart';
import 'package:flutter/material.dart';

class SmallCard extends StatefulWidget {
  final String image;
  final String text;
  const SmallCard({super.key, required this.image, required this.text});

  @override
  State<SmallCard> createState() => SsmallCardState();
}

class SsmallCardState extends State<SmallCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Image.asset(
          widget.image,
          width: width * 0.5,
        ),
        SubSubHeadingWidget(
          subsubHeading: widget.text,
        ),
      ],
    );
  }
}
