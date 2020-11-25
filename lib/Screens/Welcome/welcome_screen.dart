import 'package:first_app/Screens/Login/login_screen.dart';
import 'package:first_app/Screens/Signup/signup.dart';
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
                  height: 160,
                ),
                RoundedButton(
                  text: "SIGN UP",
                  textColor: Colors.white60,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                ),
                RoundedButton(
                  text: "LOGIN",
                  color: kPrimaryColor.withOpacity(0.6),
                  textColor: Colors.white60,
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
