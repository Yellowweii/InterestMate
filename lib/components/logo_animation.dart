import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoAnimation extends StatelessWidget {
  final double logo_left_position;
  final double logo_top_position;
  final double logo_width;
  final double logo_height;
  final int animationDuration;
  const LogoAnimation(
      {super.key,
      required this.logo_left_position,
      required this.logo_top_position,
      required this.logo_width,
      required this.logo_height,
      required this.animationDuration});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        left: logo_left_position,
        top: logo_top_position,
        duration: Duration(seconds: animationDuration),
        child: AnimatedContainer(
            duration: Duration(seconds: animationDuration),
            width: logo_width,
            height: logo_height,
            child: SvgPicture.asset(
              "images/logo.svg",
              fit: BoxFit.contain,
            )));
  }
}
