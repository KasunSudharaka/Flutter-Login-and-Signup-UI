import 'package:flutter/material.dart';
import 'package:loginapp/pages/login/subcomponents/body.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Body(),
    ));
  }
}
