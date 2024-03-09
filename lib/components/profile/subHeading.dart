import 'package:flutter/material.dart';

class SubHeadingWidget extends StatefulWidget {
  final String subHeading;
  const SubHeadingWidget({super.key, required this.subHeading});

  @override
  State<SubHeadingWidget> createState() => _SubHeadingWidgetState();
}

class _SubHeadingWidgetState extends State<SubHeadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.subHeading,
      textAlign: TextAlign.left,
      style: const TextStyle(
          color: Color.fromRGBO(33, 25, 10, 1),
          fontFamily: 'LexendBold',
          fontSize: 18,
          letterSpacing: -0.27000001072883606,
          fontWeight: FontWeight.normal,
          height: 1.25),
    );
  }
}
