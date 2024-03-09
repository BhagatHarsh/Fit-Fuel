import 'package:flutter/material.dart';

class UserNameWidget extends StatefulWidget {
  final String userName;
  const UserNameWidget({super.key, required this.userName});

  @override
  State<UserNameWidget> createState() => _UserNameWidgetState();
}

class _UserNameWidgetState extends State<UserNameWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.userName,
      textAlign: TextAlign.left,
      style: const TextStyle(
          color: Color.fromRGBO(33, 25, 10, 1),
          fontFamily: 'LexendBold',
          fontSize: 22,
          letterSpacing: -0.33000001311302185,
          fontWeight: FontWeight.normal,
          height: 1.25),
    );
  }
}
