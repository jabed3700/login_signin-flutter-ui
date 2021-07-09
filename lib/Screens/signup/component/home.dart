import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/Screens/Login/component/rounded_input_feild.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/signup/component/background.dart';
import 'package:login/Screens/signup/component/or_divider.dart';
import 'package:login/Screens/signup/component/social_icon.dart';
import 'package:login/component/already_have_account_check.dart';
import 'package:login/component/rounded_button.dart';
import 'package:login/component/rounded_password_feild.dart';
import 'package:login/constant.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGNUP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * .35,
            ),
            SizedBox(
              height: size.height * .03,
            ),
            RoundedInputFeild(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordFeild(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
              color: kPrimaryColor,
            ),
            AlreadyHaveAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  press: () {},
                  iconSrc: "assets/icons/facebook.svg",
                ),
                SocialIcon(
                  press: () {},
                  iconSrc: "assets/icons/twitter.svg",
                ),
                SocialIcon(
                  press: () {},
                  iconSrc: "assets/icons/google-plus.svg",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
