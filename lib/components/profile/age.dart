import 'package:flutter/material.dart';

class AgeButtonWidget extends StatefulWidget {
  final String age;
  const AgeButtonWidget({super.key, required this.age});

  @override
  State<AgeButtonWidget> createState() => _AgeButtonWidgetState();
}

class _AgeButtonWidgetState extends State<AgeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.age,
      textAlign: TextAlign.left,
      style: const TextStyle(
          color: Color.fromRGBO(160, 124, 28, 1),
          fontFamily: 'LexendMedium',
          fontSize: 16,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
          height: 1.5),
    );
  }
}
