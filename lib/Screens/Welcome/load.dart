import 'package:first_app/Screens/Login/login_screen.dart';
import 'package:first_app/views/home.dart';
import 'package:first_app/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class Load extends StatefulWidget {
  @override
  _LoadState createState() => _LoadState();
}

class _LoadState extends State<Load> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser>(context);
    if (user != null) {
      // dashboard
      return Home();
    } else {
      // auth page
      return LoginScreen();
    }
  }
}
