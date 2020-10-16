import 'package:flutter/material.dart';
import 'package:loginapp/components/don_have_an_account_check.dart';
import 'package:loginapp/components/rounded_button.dart';
import 'package:loginapp/components/rounded_input_field.dart';
import 'package:loginapp/components/rounded_password_field.dart';
import 'package:loginapp/components/text_field_container.dart';
import 'package:loginapp/constantvalues.dart';
import 'package:loginapp/pages/login/subcomponents/background.dart';
import 'package:loginapp/pages/signup/signup_page.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "       LOGIN",
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
              "assets/images/pic1.png",
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.01),
            RoundedInputField(
              hintText: "Enter Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Login",
              press: () {},
            ),
            OutlineButton(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              color: primaryColor,
              borderSide: BorderSide(width: 2.0, color: primaryColor3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(29)),
              child: Text(
                "Scan QR",
                style: TextStyle(
                    color: Colors.black, fontFamily: 'BRIT', fontSize: 18),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            DontHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignupPage();
                  }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
