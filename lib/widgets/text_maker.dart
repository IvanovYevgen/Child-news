import 'package:flutter/material.dart';

class TextMaker extends StatelessWidget {
  const TextMaker(
      {Key key,
      @required this.padding,
      @required this.text,
      @required this.decoration,
      @required this.fontStyle,
      @required this.fontSize,
      @required this.textDecoration,
      @required this.colour})
      : super(key: key);

// style: TextStyle(decoration: TextDecoration.none),

  final EdgeInsetsGeometry padding;
  final String text;
  final Decoration decoration;
  final FontStyle fontStyle;
  final double fontSize;
  final TextDecoration textDecoration;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        decoration: decoration,
        child: Text(
          text,
          style: TextStyle(
            decoration: textDecoration,
            fontStyle: fontStyle,
            fontSize: fontSize,
            color: colour,
          ),
        ),
      ),
    );
  }
}
