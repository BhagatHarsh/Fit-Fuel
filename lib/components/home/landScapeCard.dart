import 'package:fitfuel/components/every/responsive.dart';
import 'package:flutter/material.dart';

class LandscapeCardData {
  final String text;
  final String textUnder;
  final String imageUrl;
  final Key key;

  LandscapeCardData(
      {required this.text,
      required this.textUnder,
      required this.imageUrl,
      required this.key});
}

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
        const SizedBox(height: 10,),
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
    );
  }
}
