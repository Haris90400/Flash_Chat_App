import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color Colour;
  final String heading;
  final Function onPreesed;

  RoundedButton(
      {required this.Colour, required this.heading, required this.onPreesed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: Colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            onPreesed();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            heading,
          ),
        ),
      ),
    );
  }
}
