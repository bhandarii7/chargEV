import 'package:charge_ev/Screens/User_Cred_Screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../Utilities/constants.dart';
import 'Provider_Cred_Screen.dart';

class UserChoice extends StatelessWidget {
  const UserChoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appName,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(85, 100, 85, 30),
              child: Text(
                'You Are !!',
                style: TextStyle(fontFamily: 'Fredoku', fontSize: 40),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        child: Icon(
                          Icons.account_circle_rounded,
                          size: 100,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => UserCred(),
                            ),
                          );
                        },
                      ),
                    ),
                    Text(
                      'User',
                      style: TextStyle(
                          fontFamily: 'Fredoku',
                          fontSize: 20,
                          letterSpacing: 3),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        child: Icon(
                          Icons.account_circle_rounded,
                          size: 100,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProviderCred(),
                            ),
                          );
                        },
                      ),
                    ),
                    Text(
                      'Provider',
                      style: TextStyle(
                          fontFamily: 'Fredoku',
                          fontSize: 20,
                          letterSpacing: 2),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
