import 'package:charge_ev/Utilities/Round_button.dart';
import 'package:flutter/material.dart';
import '../Utilities/constants.dart';

class UserRegistrationScreen extends StatelessWidget {
  const UserRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appName,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextField(
            decoration: kTextFieldDecoration.copyWith(hintText: 'Name'),
            textAlign: TextAlign.center,
          ),
          TextField(
            decoration: kTextFieldDecoration.copyWith(hintText: 'Email'),
            textAlign: TextAlign.center,
          ),
          TextField(
            decoration: kTextFieldDecoration.copyWith(hintText: 'Password'),
            textAlign: TextAlign.center,
          ),
          TextField(
            maxLines: 5,
            decoration: kTextFieldDecoration.copyWith(hintText: 'Address'),
            textAlign: TextAlign.center,
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
