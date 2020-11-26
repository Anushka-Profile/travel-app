import 'package:first_app/Screens/Login/login_background.dart';
import 'package:first_app/Screens/Signup/signup.dart';
import 'package:first_app/Screens/Welcome/components/palette.dart';
import 'package:first_app/auth.dart';
// import 'package:first_app/views/home.dart';
import 'package:first_app/widgets/already-have-an-account-check.dart';
import 'package:first_app/widgets/password-input.dart';
import 'package:first_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final AuthService auth = AuthService();
  String _email = '';
  String _password = '';
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
              Form(
                key: _formKey,
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextFormField(
                              validator: (input) => !input.contains('@')
                                  ? 'Please enter a valid email'
                                  : null,
                              onSaved: (input) => _email = input,
                              decoration: kInputDecoration,
                              onChanged: (value) {
                                setState(() {
                                  _email = value.trim();
                                });
                              },
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              obscureText: true,
                              decoration: kInputPassDecoration,
                              onChanged: (value) {
                                setState(() {
                                  _password = value.trim();
                                });
                              },
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
                                press: () async {
                                  print('$_email, $_password');
                                  dynamic user =
                                      await auth.login(_email, _password);
                                  if (user == null) {
                                    print('Error logging in');
                                  }
                                  // brb
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
                                      return SignupScreen();
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
              ),
            ]),
          ),
        ),
      )
    ]);
  }
}
