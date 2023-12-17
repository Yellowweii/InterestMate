import 'package:flutter/material.dart';
import 'package:interest_mate/pages/login_page.dart';

void main() {
  runApp(MaterialApp(
    routes: {'/': (context) => LoginPage()},
  ));
}
