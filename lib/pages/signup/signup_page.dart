import 'package:flutter/material.dart';
import 'package:loginapp/pages/signup/subcomponents/body.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
