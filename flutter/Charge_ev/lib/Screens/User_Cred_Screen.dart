import 'package:charge_ev/Screens/User_Login_Screen.dart';
import 'package:charge_ev/Screens/User_Registration_Screen.dart';
import 'package:charge_ev/Utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:charge_ev/Utilities/Round_button.dart';

class UserCred extends StatefulWidget {
  const UserCred({Key? key}) : super(key: key);

  @override
  State<UserCred> createState() => _UserCredState();
}

class _UserCredState extends State<UserCred> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appName,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Column(
                children: [
                  Icon(
                    Icons.account_circle_rounded,
                    size: 100,
                  ),
                  Text(
                    'User',
                    style: TextStyle(
                        fontFamily: 'Fredoku', fontSize: 20, letterSpacing: 2),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                RoundButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => UserRegistrationScreen(),
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
                        builder: (context) => UserLoginScreen(),
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
