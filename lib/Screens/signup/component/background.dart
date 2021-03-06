import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: size.width * .35,
            child: Image.asset("assets/images/signup_top.png"),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            width: size.width * .25,
            child: Image.asset("assets/images/main_bottom.png"),
          ),
          child,
        ],
      ),
    );
  }
}
