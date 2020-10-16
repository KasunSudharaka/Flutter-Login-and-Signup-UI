import 'package:flutter/material.dart';
import 'package:loginapp/constantvalues.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Function press;
  const RoundedButton({
    Key key,
    this.text,
    this.color = primaryColor3,
    this.textColor = Colors.white,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //provides the h and w
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: size.width * 0.35,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: color,
            onPressed: press,
            child: Text(
              text,
              style:
                  TextStyle(color: textColor, fontFamily: 'BRIT', fontSize: 18),
            )),
      ),
    );
  }
}
