import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({this.color, @required this.onPressed, this.title});

  final Color? color;
  final VoidCallback? onPressed;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 250.0,
          height: 42.0,
          child: Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
