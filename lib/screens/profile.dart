import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0), // Adjust the padding as needed
            child: CircleAvatar(
              radius: 64, // Adjust the radius as needed
              backgroundImage: AssetImage('assets/images/png/face.png'),
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Mia',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(33, 25, 10, 1),
                fontFamily: 'LexendBold',
                fontSize: 22,
                letterSpacing: -0.33000001311302185,
                fontWeight: FontWeight.normal,
                height: 1.25),
          )
        ],
      ),
    );
  }
}
