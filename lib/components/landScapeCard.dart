import 'package:fitfuel/components/responsive.dart';
import 'package:flutter/material.dart';

class landScapeCard extends StatefulWidget {
  final String text;
  final String imageUrl;
  final String textunder;
  const landScapeCard(
      {required Key key,
      required this.text,
      required this.textunder,
      required this.imageUrl})
      : super(key: key);

  @override
  _landScapeCardState createState() => _landScapeCardState();
}

class _landScapeCardState extends State<landScapeCard> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator landScapeCard - FRAME - VERTICAL

    return // Figma Flutter Generator landScapeCard - FRAME - VERTICAL
        Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
              width: 240,
              height: 135,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                image: DecorationImage(
                    image: AssetImage(widget.imageUrl), fit: BoxFit.fitWidth),
              ),
              child: const Stack(children: <Widget>[])),
          const SizedBox(height: 0),
          Container(
            decoration: const BoxDecoration(),
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
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
                      Container(
                        decoration: const BoxDecoration(),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              widget.text,
                              textAlign: TextAlign.left,
                              textScaleFactor: ScaleSize.textScaleFactor(context),
                              style: const TextStyle(
                                  color: Color.fromRGBO(33, 25, 10, 1),
                                  fontFamily: 'LexendMedium',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 0),
                      Container(
                        decoration: const BoxDecoration(),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              widget.textunder,
                              textAlign: TextAlign.left,
                              textScaleFactor: ScaleSize.textScaleFactor(context),
                              style: const TextStyle(
                                  color: Color.fromRGBO(160, 124, 28, 1),
                                  fontFamily: 'LexendMedium',
                                  fontSize: 14,
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
          ),
        ],
      ),
    );
  }
}
