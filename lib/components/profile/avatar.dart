import 'package:flutter/material.dart';

class AvatartCircle extends StatefulWidget {
  const AvatartCircle({super.key});

  @override
  State<AvatartCircle> createState() => _AvatartCircleState();
}

class _AvatartCircleState extends State<AvatartCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      height: 128,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(64),
          topRight: Radius.circular(64),
          bottomLeft: Radius.circular(64),
          bottomRight: Radius.circular(64),
        ),
        image: DecorationImage(
            image: AssetImage('assets/images/png/face.png'),
            fit: BoxFit.fitWidth),
      ),
    );
  }
}
