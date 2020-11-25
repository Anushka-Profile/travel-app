import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key key,
    @required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.8),
          borderRadius: BorderRadius.circular(200.0)),
      child: FlatButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(buttonText,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.normal)),
          )),
    );
  }
}
