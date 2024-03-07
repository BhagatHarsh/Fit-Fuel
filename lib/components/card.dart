import 'package:fitfuel/components/responsive.dart';
import 'package:flutter/material.dart';

class photoCard extends StatefulWidget {
  final String text;
  final String imageUrl;
  final String textunder;

  const photoCard({required Key key, required this.text, required this.textunder, required this.imageUrl}) : super(key: key);

  @override
  _photoCardState createState() => _photoCardState();
}

class _photoCardState extends State<photoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            width: 171.53125,
            height: 171.53125,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(widget.imageUrl), // Use NetworkImage for dynamic image URLs
                fit: BoxFit.fitWidth,
              ),
            ),
            child: const Stack(children: <Widget>[]),
          ),
          const SizedBox(height: 0),
          Container(
            decoration: const BoxDecoration(),
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
            child: Column(
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
                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              widget.text, // Use widget.text to get dynamic text
                              textAlign: TextAlign.left,
                              textScaleFactor: ScaleSize.textScaleFactor(context),
                              style: const TextStyle(
                                color: Color.fromRGBO(33, 25, 10, 1),
                                fontFamily: 'LexendMedium',
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 0),
                      Container(
                        decoration: const BoxDecoration(),
                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
                                height: 1.5,
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
          ),
        ],
      ),
    );
  }
}
