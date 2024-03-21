import 'package:flutter/material.dart';

class SubSubHeadingWidget extends StatefulWidget {
  final String subsubHeading;

  const SubSubHeadingWidget({super.key, required this.subsubHeading});

  @override
  State<SubSubHeadingWidget> createState() => _SubSubHeadingWidgetState();
}

class _SubSubHeadingWidgetState extends State<SubSubHeadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.subsubHeading,
      textAlign: TextAlign.left,
      softWrap: true,
      style: const TextStyle(
          color: Color.fromRGBO(33, 25, 10, 1),
          fontFamily: 'LexendMedium',
          fontSize: 14,
          letterSpacing: 0,
          fontWeight: FontWeight.normal,
          height: 1.5),
    );
  }
}
