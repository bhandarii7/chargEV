import 'package:charge_ev/Screens/Register_screen.dart';
import 'package:flutter/material.dart';
import 'package:charge_ev/Utilities/constants.dart';
import 'package:charge_ev/Utilities/Round_button.dart';
import 'package:charge_ev/Screens/Login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                Center(
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      signUpLogo,
                      scale: 3.0,
                    ),
                  ),
                ),
                TextLiquidFill(
                  text: "ChargEV",
                  boxBackgroundColor: Color(0xFFE0E0E0),
                  textStyle: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ComforterBrush'),
                  boxHeight: 80.0,
                  boxWidth: 200.0,
                  loadDuration: Duration(seconds: 2),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
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
          ),
        ],
      ),
    );
  }
}
