import 'package:charge_ev/Screens/Login+Register.dart';
import 'package:charge_ev/Screens/Choice_Screen.dart';
import 'package:charge_ev/Utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  bool isFade = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: AnimatedSplashScreen(
          duration: 500,
          splash: Image.asset(
            signUpLogo,
            height: 200,
          ),
          splashIconSize: 150,
          nextScreen: UserChoice(),
          splashTransition: SplashTransition.scaleTransition,
          pageTransitionType: PageTransitionType.rightToLeftWithFade,
          backgroundColor: Colors.yellowAccent),
    );
  }
}
