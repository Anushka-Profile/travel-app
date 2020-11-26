import 'package:first_app/Screens/Welcome/components/palette.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.inputType,
    this.onChanged,
    this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final ValueChanged<String> onChanged;
  final TextInputType inputType;
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
        child: TextFormField(
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
            ),
            hintStyle: kInputText,
          ),
          style: kInputText,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
