import 'package:flutter/material.dart';

class WeeklyStatusWidget extends StatefulWidget {
  final String title;
  final String change;
  const WeeklyStatusWidget(
      {super.key, required this.title, required this.change});

  @override
  _WeeklyStatusWidgetState createState() => _WeeklyStatusWidgetState();
}

class _WeeklyStatusWidgetState extends State<WeeklyStatusWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator WeeklyStatusWidget - FRAME - HORIZONTAL

    return Container(
      decoration: const BoxDecoration(),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(),
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        widget.title,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Color.fromRGBO(160, 124, 28, 1),
                            fontFamily: 'LexendMedium',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 4),
          Container(
            decoration: const BoxDecoration(),
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        widget.change,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Color.fromRGBO(81, 135, 68, 1),
                            fontFamily: 'Lexend',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
