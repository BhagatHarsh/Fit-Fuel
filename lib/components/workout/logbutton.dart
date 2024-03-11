import 'package:flutter/material.dart';

class LogButtonWidget extends StatefulWidget {
  final String text;
  const LogButtonWidget({super.key, required this.text});

  @override
  _LogButtonWidgetState createState() => _LogButtonWidgetState();
}

class _LogButtonWidgetState extends State<LogButtonWidget> {
  @override
  Widget build(BuildContext context) {
    // Get screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate button width based on screen width
    // For example, let's make the button 80% of the screen width
    double buttonWidth = screenWidth * 0.5;

    return InkWell(
      onTap: () {},
      child: Container(
        width: buttonWidth, // Set the button width
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Color.fromRGBO(249, 198, 56, 1),
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 10), // Adjust padding as needed
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              // Use Expanded to allow the text to expand
              child: Text(
                widget.text,
                textAlign: TextAlign.center, // Center the text
                style: const TextStyle(
                  color: Color.fromRGBO(170, 33, 22, 1),
                  fontFamily: 'LexendBold',
                  fontSize: 16,
                  letterSpacing: 0.23999999463558197,
                  fontWeight: FontWeight.normal,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
