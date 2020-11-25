import 'package:first_app/Screens/Login/login_background.dart';
import 'package:first_app/Screens/Signup/signup.dart';
import 'package:first_app/views/home.dart';
import 'package:first_app/widgets/already-have-an-account-check.dart';
import 'package:first_app/widgets/password-input.dart';
import 'package:first_app/widgets/rounded_button.dart';
import 'package:first_app/widgets/text-input.dart';
import 'package:flutter/material.dart';

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
                height: 220,
                child: Center(
                  child: Text(
                    'Season Hill',
                    style: TextStyle(
                        fontSize: 55,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextInput(
                            icon: Icons.person,
                            hint: 'Email',
                            inputType: TextInputType.emailAddress,
                            onChanged: (value) {},
                            inputAction: TextInputAction.next,
                          ),
                          PasswordInput(
                            icon: Icons.lock,
                            hint: 'Password',
                            onChanged: (value) {},
                            inputAction: TextInputAction.done,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          RoundedButton(
                              text: 'Login',
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Home();
                                    },
                                  ),
                                );
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          AlreadyHaveAnAccountCheck(
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
