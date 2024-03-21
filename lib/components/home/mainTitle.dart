import 'package:fitfuel/components/every/responsive.dart';
import 'package:flutter/material.dart';

class TitleWiget extends StatefulWidget {
  final String titleText;

  const TitleWiget({required Key key, required this.titleText})
      : super(key: key);

  @override
  _TitleWigetState createState() => _TitleWigetState();
}

class _TitleWigetState extends State<TitleWiget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.titleText,
      textAlign: TextAlign.left,
      // overflow: TextOverflow.ellipsis, // Handle overflow
      softWrap: true, // Wrap text to the next line
      textScaleFactor: ScaleSize.textScaleFactor(context),
      style: const TextStyle(
        color: Color.fromRGBO(33, 25, 10, 1),
        fontFamily: 'LexendBold',
        fontSize: 22,
        letterSpacing: -0.33000001311302185,
        fontWeight: FontWeight.normal,
        height: 1.25,
      ),
    );
  }
}
