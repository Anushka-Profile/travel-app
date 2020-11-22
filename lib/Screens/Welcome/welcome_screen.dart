import 'package:first_app/Screens/Login/login_screen.dart';
import 'package:first_app/Screens/Welcome/components/background.dart';
import 'package:first_app/Screens/Welcome/components/palette.dart';
import 'package:flutter/material.dart';
import 'package:first_app/widgets/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  height: 250,
                  child: Center(
                    child: Text('WELCOME', style: kHeading),
                  ),
                ),
                SizedBox(
                  height: 190,
                ),
                RoundedButton(
                  text: "SIGN UP",
                  textColor: kPrimaryColor,
                  press: () {},
                ),
                RoundedButton(
                  text: "LOGIN",
                  color: kPrimaryColor.withOpacity(0.3),
                  textColor: Color(0xFF0D47A1),
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                )
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
