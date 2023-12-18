import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoNameAnimation extends StatelessWidget {
  final double logoName_left_position;
  final double logoName_top_position;
  final int animationDuration;
  const LogoNameAnimation(
      {super.key,
      required this.logoName_top_position,
      required this.logoName_left_position,
      required this.animationDuration});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: logoName_left_position,
      top: logoName_top_position,
      duration: Duration(seconds: animationDuration),
      child: Text(
        "InterestMate",
        style: TextStyle(
            color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.w600),
      ),
    );
  }
}
