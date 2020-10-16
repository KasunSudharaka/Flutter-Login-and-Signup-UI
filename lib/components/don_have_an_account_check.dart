import 'package:flutter/material.dart';

import '../constantvalues.dart';

class DontHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const DontHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(login ? "Don't have an account? " : "Already have an account?",
            style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Signup here" : "Sign In here",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
