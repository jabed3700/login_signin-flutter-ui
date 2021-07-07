import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/Screens/Login/component/background.dart';
import 'package:login/Screens/Login/component/rounded_input_feild.dart';
import 'package:login/component/already_have_account_check.dart';
import 'package:login/component/rounded_button.dart';
import 'package:login/component/rounded_password_feild.dart';
import 'package:login/component/text_feild_container.dart';
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
            "LOGIN",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: size.height * .03,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * .35,
          ),
          SizedBox(
            height: size.height * .03,
          ),
          RoundedInputFeild(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordFeild(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
            color: kPrimaryColor,
          ),
          AlreadyHaveAccountCheck(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>return SignUpScreen(),));
            },
          )
        ],
      ),
    );
  }
}
