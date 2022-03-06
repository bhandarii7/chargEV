import 'package:flutter/material.dart';
import 'Screens/Login+Register.dart';
import 'Screens/Splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashScreen(),
    );
  }
}
