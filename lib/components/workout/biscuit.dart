import 'package:flutter/material.dart';

class BuscuitWidget extends StatefulWidget {
  final String text;
  final Function(String?) onSubmit;
  final String? initialValue;
  const BuscuitWidget({
    Key? key,
    required this.text,
    required this.onSubmit,
    this.initialValue,
  }) : super(key: key);

  @override
  _BuscuitWidgetState createState() => _BuscuitWidgetState();
}

class _BuscuitWidgetState extends State<BuscuitWidget> {
  late TextEditingController _weightController = TextEditingController();
  late TextEditingController _repsController = TextEditingController();
  late TextEditingController _minutesController = TextEditingController();
  late TextEditingController _secondsController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _weightController = TextEditingController(text: widget.initialValue ?? '');
    _repsController = TextEditingController(text: widget.initialValue ?? '');
    _minutesController = TextEditingController(text: '1');
    _secondsController = TextEditingController(text: '0');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              color: Color.fromRGBO(244, 239, 219, 1),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (widget.text == 'Weight')
                  SizedBox(
                    width: screenWidth * 0.45,
                    child: TextField(
                      controller: _weightController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(160, 124, 28, 1),
                          fontFamily: 'LexendMedium',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                        ),
                        labelText: 'Weight',
                        hintText: 'Enter weight',
                        border: OutlineInputBorder(),
                      ),
                      onSubmitted: (value) {
                        String weight = _weightController.text;
                        if (weight.isNotEmpty) {
                          double weightValue = double.tryParse(weight) ?? 0;
                          if (weightValue < 1) {
                            widget.onSubmit(
                                'Weight must be greater than or equal to 1');
                            _weightController.text = "";
                          } else {
                            widget.onSubmit(null);
                          }
                        } else {
                          widget.onSubmit('Weight is required');
                          _weightController.text = "";
                        }
                      },
                    ),
                  )
                else if (widget.text == 'Reps')
                  SizedBox(
                    width: screenWidth * 0.45,
                    child: TextField(
                      controller: _repsController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(160, 124, 28, 1),
                          fontFamily: 'LexendMedium',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                        ),
                        labelText: 'Reps',
                        hintText: 'Enter reps',
                        border: OutlineInputBorder(),
                      ),
                      onSubmitted: (value) {
                        String reps = _repsController.text;
                        if (reps.isNotEmpty) {
                          int repsValue = int.tryParse(reps) ?? 0;
                          if (repsValue < 1) {
                            widget.onSubmit(
                                'Reps must be greater than or equal to 1');
                            _repsController.text = "";
                          } else {
                            widget.onSubmit(null);
                          }
                        } else {
                          widget.onSubmit('Reps are required');
                          _repsController.text = "";
                        }
                      },
                    ),
                  )
                else if (widget.text == 'Minutes')
                  SizedBox(
                    width: screenWidth * 0.45,
                    child: TextField(
                      controller: _minutesController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(160, 124, 28, 1),
                          fontFamily: 'LexendMedium',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                        ),
                        labelText: 'Minutes',
                        hintText: 'Enter Minutes',
                        border: OutlineInputBorder(),
                      ),
                      onSubmitted: (value) {
                        widget.onSubmit(value);
                      },
                    ),
                  )
                else if (widget.text == 'Seconds')
                  SizedBox(
                    width: screenWidth * 0.45,
                    child: TextField(
                      controller: _secondsController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(160, 124, 28, 1),
                          fontFamily: 'LexendMedium',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                        ),
                        labelText: 'Seconds',
                        hintText: 'Enter Seconds',
                        border: OutlineInputBorder(),
                      ),
                      onSubmitted: (value) {
                        widget.onSubmit(value);
                      },
                    ),
                  )
                else
                  SizedBox(
                   width: screenWidth * 0.44,
                   height: 60,
                    child: Center(
                      child: Text(
                        widget.text,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Color.fromRGBO(160, 124, 28, 1),
                          fontFamily: 'LexendMedium',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
