import 'package:flutter/material.dart';

class ChangeButton extends StatelessWidget {
  const ChangeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate a big size for the button, for example, 95% of the screen width
    double buttonWidth = screenWidth * 0.2;

    return InkWell(
      onTap: () {},
      child: Container(
        width: buttonWidth, // Set the width to 95% of the screen width
        height: 50, // Set a fixed height for the button
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), // Rounded corners
          color: const Color.fromRGBO(244, 239, 219, 1), // Button color
        ),
        child: const Center(
          child: Text(
            'Change',
            style: TextStyle(
              color: Color.fromRGBO(33, 25, 10, 1),
              fontFamily: 'LexendMedium',
              fontSize: 14,
              letterSpacing: 0.20999999344348907,
              fontWeight: FontWeight.normal,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
