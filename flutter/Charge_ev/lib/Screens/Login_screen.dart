import 'package:charge_ev/Utilities/Round_button.dart';
import 'package:charge_ev/Utilities/constants.dart';
import 'package:flutter/material.dart';

import 'Register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Hero(
              tag: 'logo',
              child: Image.asset(
                signUpLogo,
                height: 100.0,
              ),
            ),
          ),
          RoundButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            color: Colors.teal,
            title: "Register",
          ),
          RoundButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RegistrationScreen(),
                ),
              );
            },
            color: Colors.teal,
            title: "Login",
          ),
        ],
      ),
    );
  }
}
