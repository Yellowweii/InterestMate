import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interest_mate/pages/login_page.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (BuildContext context, Widget? child) {
      return MaterialApp(
        routes: {
          '/': (context) {
            double deviceWidth = MediaQuery.of(context).size.width;
            double deviceHeight = MediaQuery.of(context).size.height;
            return LoginPage(
              deviceWidth: deviceWidth,
              deviceHeight: deviceHeight,
            );
          }
        },
        theme: ThemeData(textTheme: GoogleFonts.robotoTextTheme()),
        debugShowCheckedModeBanner: false,
      );
    },
  ));
}
