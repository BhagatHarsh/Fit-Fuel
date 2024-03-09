import 'package:fitfuel/components/every/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconContainer extends StatefulWidget {
  final String iconPath;
  final String iconName;
  final bool selected;
  const IconContainer(
      {required Key key,
      required this.iconPath,
      required this.iconName,
      required this.selected})
      : super(key: key);

  @override
  State<IconContainer> createState() => _IconContainerState();
}

class _IconContainerState extends State<IconContainer> {
  Color selectedColor = const Color.fromRGBO(33, 25, 10, 1);
  Color unSelectedColor = const Color.fromRGBO(160, 124, 28, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              color: Color.fromRGBO(249, 249, 247, 1),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                            width: 24,
                            height: 24,
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 0,
                                child: SvgPicture.asset(
                                  widget.iconPath,
                                  semanticsLabel: widget.iconName,
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: const BoxDecoration(),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    child: const Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[],
                                    ),
                                  )),
                            ])),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          widget.iconName,
                          textAlign: TextAlign.center,
                          textScaleFactor: ScaleSize.textScaleFactor(context),
                          style: TextStyle(
                            color: widget.selected?selectedColor:unSelectedColor,
                            fontFamily:
                                widget.selected ? 'LexendBold' : 'LexendMedium',
                            fontSize: 12,
                            letterSpacing: 0.18000000715255737,
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
          ),
        ],
      ),
    );
  }
}
