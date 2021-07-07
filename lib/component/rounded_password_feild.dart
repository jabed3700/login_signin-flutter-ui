import 'package:flutter/material.dart';
import 'package:login/component/text_feild_container.dart';

import '../constant.dart';

class RoundedPasswordFeild extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordFeild({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
