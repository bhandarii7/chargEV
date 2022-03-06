import 'package:charge_ev/Utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:charge_ev/Utilities/Round_button.dart';

class ProviderCred extends StatefulWidget {
  const ProviderCred({Key? key}) : super(key: key);

  @override
  State<ProviderCred> createState() => _ProviderCredState();
}

class _ProviderCredState extends State<ProviderCred> {
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
                    'Provider',
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
                  onPressed: () {},
                  color: Colors.teal,
                  title: "Register",
                ),
                RoundButton(
                  onPressed: () {},
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
