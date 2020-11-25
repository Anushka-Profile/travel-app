import 'package:flutter/material.dart';

class SignupBackground extends StatelessWidget {
  const SignupBackground({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
              colors: [Colors.black, Colors.black12],
              begin: Alignment.bottomCenter,
              end: Alignment.center)
          .createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1500835556837-99ac94a94552?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black87.withOpacity(0.6), BlendMode.darken),
        )),
      ),
    );
  }
}
