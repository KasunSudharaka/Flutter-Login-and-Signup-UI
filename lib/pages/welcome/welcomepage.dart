import 'package:flutter/material.dart';
import 'package:loginapp/pages/welcome/subcomponents/body.dart';

class Welocomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
