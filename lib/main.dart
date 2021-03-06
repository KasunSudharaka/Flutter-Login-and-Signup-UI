import 'package:flutter/material.dart';
import 'package:loginapp/constantvalues.dart';
import 'package:loginapp/pages/welcome/welcomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Authentication',
      theme: ThemeData(
          primaryColor: primaryColor, scaffoldBackgroundColor: Colors.white),
      home: Welocomepage(),
    );
  }
}
