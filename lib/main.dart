import 'package:flutter/material.dart';
import 'package:first_app/Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: Color(0xFF0D47A1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Anton',
      ),
      home: WelcomeScreen(),
    );
  }
}
