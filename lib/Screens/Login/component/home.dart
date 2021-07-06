import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/Screens/Login/component/background.dart';
import 'package:login/constant.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * .35,
          ),
          TextFeildContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Your Email',
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextFeildContainer extends StatelessWidget {
  final Widget child;
  const TextFeildContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * .8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
