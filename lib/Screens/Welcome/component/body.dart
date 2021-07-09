import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/signup/signup_screen.dart';
import 'package:login/component/rounded_button.dart';
import 'package:login/constant.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME TO TAKWASOFT",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * .45,
            ),
            SizedBox(
              height: size.height * .05,
            ),
            RoundedButton(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              text: 'LOGIN',
              color: kPrimaryColor,
            ),
            RoundedButton(
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ));
              },
              text: 'SIGNUP',
              color: kPrimaryLightColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
