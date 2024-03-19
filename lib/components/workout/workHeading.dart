import 'package:flutter/material.dart';

class SetWidget extends StatefulWidget {
  final String settext;
  const SetWidget({Key? key, required this.settext}) : super(key: key);
  @override
  _SetWidgetState createState() => _SetWidgetState();
}

class _SetWidgetState extends State<SetWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SetWidget - TEXT

    return Text(
      widget.settext,
      textAlign: TextAlign.left,
      style: const TextStyle(
          color: Color.fromRGBO(33, 25, 10, 1),
          fontFamily: 'LexendMedium',
          fontSize: 24,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
          height: 1),
    );
  }
}
