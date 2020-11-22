import 'package:first_app/Screens/Login/login_background.dart';
import 'package:first_app/widgets/password-input.dart';
import 'package:first_app/widgets/round-button.dart';
import 'package:first_app/widgets/text-input.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      LoginBackground(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Container(
                height: 150,
                child: Center(
                  child: Text(
                    'Season Hill',
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextInput(
                            icon: FontAwesomeIcons.solidEnvelope,
                            hint: 'Email',
                            inputType: TextInputType.emailAddress,
                            inputAction: TextInputAction.next,
                          ),
                          PasswordInput(
                            icon: FontAwesomeIcons.lock,
                            hint: 'Password',
                            inputAction: TextInputAction.done,
                          ),
                          Text('Forgot Password?',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w100,
                                  color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          RoundButton(buttonText: 'Login'),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide.none)),
                              child: Text(
                                "Don't Have an Account?\n Click here to Register",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white60,
                                    fontWeight: FontWeight.w100),
                              )),
                          SizedBox(height: 50)
                        ],
                      ),
                    ],
                  )),
            ]),
          ),
        ),
      )
    ]);
  }
}
