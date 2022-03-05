import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

const signUpLogo = 'images/chargev_logo.png';

final AnimatedTextKit appName = AnimatedTextKit(
  totalRepeatCount: 1,
  animatedTexts: [
    TypewriterAnimatedText(
      'ChargEV',
      textStyle:
          TextStyle(fontFamily: 'Caveat', fontSize: 45, color: Colors.yellow),
      speed: Duration(milliseconds: 70),
    ),
  ],
);

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
