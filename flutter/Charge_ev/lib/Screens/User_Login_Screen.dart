import 'package:charge_ev/Utilities/Round_button.dart';
import 'package:flutter/material.dart';

import '../Utilities/constants.dart';

class UserLoginScreen extends StatelessWidget {
  const UserLoginScreen({Key? key}) : super(key: key);

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
          Icon(
            Icons.account_circle_rounded,
            size: 100,
          ),
          Text(
            'User',
            style: TextStyle(
                fontFamily: 'Fredoku', fontSize: 20, letterSpacing: 2),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: kTextFieldDecoration.copyWith(hintText: 'Email'),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            decoration: kTextFieldDecoration.copyWith(hintText: 'Password'),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          RoundButton(
            color: Colors.teal,
            title: 'Submit',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
