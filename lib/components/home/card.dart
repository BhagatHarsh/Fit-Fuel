import 'package:fitfuel/components/every/responsive.dart';
import 'package:flutter/material.dart';

class PhotoCardData {
  final String textUnder;
  final String text;
  final String imageUrl;
  final Key key;

  PhotoCardData(
      {required this.textUnder,
      required this.text,
      required this.imageUrl,
      required this.key});
}


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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
        const SizedBox(height: 10,),
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
    );
  }
}
