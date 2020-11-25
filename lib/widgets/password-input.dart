import 'package:first_app/Screens/Welcome/components/palette.dart';
import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.onChanged,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final ValueChanged<String> onChanged;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600].withOpacity(0.5),
          borderRadius: BorderRadius.circular(200.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            suffixIcon: Icon(Icons.visibility, color: Colors.white60),
            hintStyle: kInputText,
          ),
          obscureText: true,
          style: kInputText,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
