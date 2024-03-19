import 'package:flutter/material.dart';

class HeadingWidget extends StatefulWidget {
  final String heading;
  const HeadingWidget({super.key, required this.heading});

  @override
  State<HeadingWidget> createState() => _HeadingWidgetState();
}

class _HeadingWidgetState extends State<HeadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.heading,
      textAlign: TextAlign.left,
      style: const TextStyle(
          color: Color.fromRGBO(33, 25, 10, 1),
          fontFamily: 'LexendMedium',
          fontSize: 32,
          letterSpacing: -0.800000011920929,
          fontWeight: FontWeight.normal,
          height: 1.25),
    );
  }
}
