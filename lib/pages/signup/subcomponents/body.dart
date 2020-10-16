import 'package:flutter/material.dart';
import 'package:loginapp/components/don_have_an_account_check.dart';
import 'package:loginapp/components/rounded_button.dart';
import 'package:loginapp/components/rounded_input_field.dart';
import 'package:loginapp/components/rounded_password_field.dart';
import 'package:loginapp/pages/login/loginpage.dart';
import 'package:loginapp/pages/signup/subcomponents/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "SIGNUP      ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'LOBSTER',
                    color: Colors.black54),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Image.asset(
              "assets/images/signup3.png",
              height: size.height * 0.3,
            ),
            RoundedInputField(
              hintText: "Enter your email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Sign Up",
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            DontHaveAnAccountCheck(
              login: false,
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
            )
          ],
        ),
      ),
    );
  }
}
