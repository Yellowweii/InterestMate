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
        child: Padding(
          padding: EdgeInsets.only(left: 38.w, top: 78.h, right: 44.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                    color: Color(0xFF0B372F),
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                "sign in",
                style: TextStyle(
                    color: Color(0xFF0B372F),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 60.h,
              ),
              Form(
                  child: Column(
                children: [
                  TextField(
                    cursorColor: Color(0xFF0B372F),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Color(0xFF979797),
                      ),
                      labelText: "手机号",
                      labelStyle: TextStyle(color: Color(0xFF0B372F)),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.gpp_good_outlined,
                            color: Color(0xFF979797)),
                        labelText: "验证码",
                        labelStyle: TextStyle(color: Color(0xFF0B372F))),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
