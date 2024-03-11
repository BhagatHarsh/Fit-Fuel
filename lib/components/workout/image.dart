import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  final String imageUrl;
  const ImageWidget({super.key, required this.imageUrl});

  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ImageWidget - FRAME - HORIZONTAL

    return Container(
      decoration: const BoxDecoration(),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 114,
            height: 64.125,
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
        ],
      ),
    );
  }
}
