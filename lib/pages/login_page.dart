import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interest_mate/components/login_background_image.dart';
import 'package:interest_mate/components/login_form.dart';
import 'package:interest_mate/components/logoName_animation.dart';
import 'package:interest_mate/components/logo_animation.dart';

class LoginPage extends StatefulWidget {
  final double deviceWidth;
  final double deviceHeight;
  const LoginPage(
      {super.key, required this.deviceHeight, required this.deviceWidth});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String login_background = "login_background.png";
  int animationDuration = 1;
  //  logo position
  double logo_width = 140.w;
  double logo_height = 101.h;
  double logo_top_position = 168.h;
  late double logo_left_position;
  // logoName position
  double logoName_top_position = 292.h;
  late double logoName_left_position;
  // description position
  double description_bottom_position = 140.h;
  late double description_left_position;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialPosition();
    showAnimated();
  }

  void initialPosition() {
    setState(() {
      logo_left_position = widget.deviceWidth / 2 - 70.w;
      logoName_left_position = widget.deviceWidth / 2 - 58.w;
      description_left_position = widget.deviceWidth / 2 - 48.w;
    });
  }

  // show logo's and logoName's animation after 3 seconds
  void showAnimated() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        logo_width = 52.w;
        logo_height = 37.5.h;
        logo_left_position = 21.w;
        logo_top_position = 29.h;
        logoName_left_position = 85.w;
        logoName_top_position = 38.h;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // login backgound-image
            LoginBackgroundImage(login_background: login_background),
            // logo-animation
            LogoAnimation(
              logo_left_position: logo_left_position,
              logo_top_position: logo_top_position,
              logo_width: logo_width,
              logo_height: logo_height,
              animationDuration: animationDuration,
            ),
            // logoName-animation
            LogoNameAnimation(
              logoName_top_position: logoName_top_position,
              logoName_left_position: logoName_left_position,
              animationDuration: animationDuration,
            ),
            // Positioned(
            //   left: description_left_position,
            //   bottom: description_bottom_position,
            //   child: Text(
            //     "一个找搭子的app",
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 12.sp,
            //         fontWeight: FontWeight.w600),
            //   ),
            // ),
            LoginForm()
          ],
        ),
      ),
    );
  }
}
