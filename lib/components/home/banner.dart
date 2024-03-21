import 'package:fitfuel/components/profile/subsubHeading.dart';
import 'package:flutter/material.dart';
import 'package:fitfuel/components/profile/Heading.dart';
import 'package:fitfuel/components/profile/subHeading.dart';

class BannerWidget extends StatefulWidget {
  final String duration, price, condition1, condition2;
  const BannerWidget(
      {super.key,
      required this.duration,
      required this.price,
      required this.condition1,
      required this.condition2});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: SubHeadingWidget(subHeading: widget.duration),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: HeadingWidget(heading: widget.price),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Row(
            children: [
              const Icon(Icons.check),
              SubSubHeadingWidget(subsubHeading: widget.condition1)
            ],
          ),
        ),
        const SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Row(
            children: [
              const Icon(Icons.check),
              SubSubHeadingWidget(subsubHeading: widget.condition2)
            ],
          ),
        )
      ],
    );
  }
}
