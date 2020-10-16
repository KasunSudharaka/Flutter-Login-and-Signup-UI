import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              right: 0,
              top: 0,
              child: Image.asset(
                "assets/images/curve4.png",
                width: size.width * 1.45,
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/curve2.png",
                width: size.width * 0.8,
              )),
          child,
        ],
      ),
    );
  }
}
