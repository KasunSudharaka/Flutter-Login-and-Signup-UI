import 'package:flutter/material.dart';
import 'package:loginapp/components/rounded_button.dart';
import 'package:loginapp/constantvalues.dart';
import 'package:loginapp/pages/login/loginpage.dart';
import 'package:loginapp/pages/signup/signup_page.dart';
import 'package:loginapp/pages/welcome/subcomponents/backgroound.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //provides the h and w
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "      Welcome to \n      Easy Ticket",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontFamily: 'LOBSTER',
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Image.asset(
              "assets/images/pic4.png",
              height: size.height * 0.45,
              width: size.width * 0.85,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "Login",
              color: primaryColor3,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
            ),
            // RoundedButton(
            //   text: "Sign up",
            //   color: primaryColor2,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) {
            //         return SignupPage();
            //       }),
            //     );
            //   },
            // ),

            OutlineButton(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              color: primaryColor,
              borderSide: BorderSide(width: 2.0, color: primaryColor3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(29)),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.black, fontFamily: 'BRIT', fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignupPage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
