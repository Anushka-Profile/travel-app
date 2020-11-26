import 'package:first_app/Screens/Login/login_screen.dart';
import 'package:first_app/Screens/Signup/signup_background.dart';
import 'package:first_app/Screens/Welcome/components/palette.dart';
// import 'package:first_app/views/home.dart';
import 'package:first_app/widgets/already-have-an-account-check.dart';
import 'package:first_app/widgets/rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:first_app/auth.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String _email, _password = "";
  final AuthService auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SignupBackground(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              Container(
                height: 250,
                child: Center(
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: TextFormField(
                              decoration: kInputDecoration,
                              onChanged: (value) {
                                _email = value.trim();
                              },
                            ),
                          ),
                          TextFormField(
                            // icon: Icons.lock,
                            // hint: 'Password',
                            obscureText: true,
                            decoration: kInputPassDecoration,
                            onChanged: (value) {
                              setState(() {
                                _password = value.trim();
                              });
                            },
                            // inputAction: TextInputAction.done,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          RoundedButton(
                              text: 'Sign Up',
                              press: () async {
                                print('$_email, $_password');
                                dynamic user =
                                    await auth.register(_email, _password);
                                if (user == null) {
                                  print('Error signing up');
                                }
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          AlreadyHaveAnAccountCheck(
                            login: false,
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
                          ),
                          OrDivider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SocalIcon(
                                  iconSrc: "assets/icons/google.svg",
                                  press: () {})
                            ],
                          )
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

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocalIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(iconSrc, height: 20, width: 20),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text("OR",
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.w600)),
          ),
          buildDivider(),
        ],
      ),
    );
  }
}

Expanded buildDivider() {
  return Expanded(
    child: Divider(
      color: Color(0xFFD9D9D9),
      height: 1.5,
    ),
  );
}
