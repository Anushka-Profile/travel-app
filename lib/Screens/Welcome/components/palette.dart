import 'dart:ui';

import 'package:flutter/material.dart';

const Color kPrimaryLightColor = Color(0xFF7986CB);
const Color kPrimaryColor = Color(0xFF01579B);

const TextStyle kHeading = TextStyle(
        fontSize: 60, fontWeight: FontWeight.w900, color: Colors.white70),
    kBodyText = TextStyle(
        fontSize: 35, fontWeight: FontWeight.w700, color: Color(0xFF01579B)),
    kInputText = TextStyle(
        fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white);

final kInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 20),
  border: OutlineInputBorder(),
  hintText: "Email",
  prefixIcon: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Icon(
      Icons.person,
      color: Colors.white,
      size: 30,
    ),
  ),
  hintStyle: kInputText,
);

final kInputPassDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 20),
  border: OutlineInputBorder(),
  hintText: "Password",
  prefixIcon: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Icon(
      Icons.lock,
      color: Colors.white,
      size: 30,
    ),
  ),
  hintStyle: kInputText,
);
