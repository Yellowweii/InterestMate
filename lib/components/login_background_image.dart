import 'package:flutter/material.dart';

import '../constants/domain_constant.dart';

class LoginBackgroundImage extends StatelessWidget {
  final String login_background;
  const LoginBackgroundImage({super.key, required this.login_background});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/${login_background}"),
              fit: BoxFit.contain)),
      duration: Duration(seconds: 1),
    );
  }
}
