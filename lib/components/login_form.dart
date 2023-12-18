import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(seconds: 1),
      right: 0,
      bottom: 0,
      child: Container(
        width: 343.w,
        height: 615.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(101.sp)),
            color: Colors.white),
      ),
    );
  }
}
