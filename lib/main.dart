import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_screen.dart';
import 'package:flutter_application_2/login_screen.dart';
import 'package:flutter_application_2/routes.dart';
import 'package:flutter_application_2/signup_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        Routes.login: (context) => LoginScreen(),
        Routes.signup: (context) => SignUp(),
        Routes.home: (context) => HomeScreen(),
      },
    ),
  );
}
