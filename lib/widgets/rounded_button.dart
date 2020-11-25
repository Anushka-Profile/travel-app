import 'package:flutter/material.dart';
import 'package:first_app/Screens/Welcome/components/palette.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryLightColor,
    this.textColor = Colors.blueAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.8,
        child: ClipRRect(
            child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                color: color.withOpacity(0.2),
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70),
                  side: BorderSide(color: Color(0xFF01579B).withOpacity(0.5)),
                ),
                onPressed: press,
                child: Text(
                  text,
                  style: TextStyle(
                      color: textColor,
                      fontFamily: 'Anton',
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ))));
  }
}
