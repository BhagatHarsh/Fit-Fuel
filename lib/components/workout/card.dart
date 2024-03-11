import 'package:fitfuel/components/profile/age.dart';
import 'package:fitfuel/components/profile/subsubHeading.dart';
import 'package:fitfuel/components/workout/image.dart';
import 'package:flutter/material.dart';

class WorkOutCardData {
  final String title;
  final String subTitle;
  final String image;

  WorkOutCardData(this.title, this.subTitle, this.image);
}

class WorkOutCard extends StatefulWidget {
  final String maintext, subtext, imageUrl;
  const WorkOutCard(
      {super.key,
      required this.maintext,
      required this.subtext,
      required this.imageUrl});

  @override
  State<WorkOutCard> createState() => _WorkOutCardState();
}

class _WorkOutCardState extends State<WorkOutCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubSubHeadingWidget(subsubHeading: widget.maintext),
            AgeButtonWidget(age: widget.subtext)
          ],
        ),
        ImageWidget(
          imageUrl: widget.imageUrl,
        )
      ],
    );
  }
}
