import 'package:flutter/material.dart';
import 'package:loginapp/components/text_field_container.dart';
import 'package:loginapp/constantvalues.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "password",
            icon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: Colors.black,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
