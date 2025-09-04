import 'package:flutter/material.dart';
import 'package:flutter_ui_task3/pages/home_page.dart';
import 'package:flutter_ui_task3/pages/login_page.dart';
import 'package:flutter_ui_task3/pages/register_page.dart';
import 'package:flutter_ui_task3/pages/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
        ),
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "splash": (context) {
          return SplashScreen();
        },
        "login": (context) {
          return LoginPage();
        },
        "register": (context) {
          return RegisterPage();
        },
        "home": (context) {
          return HomePage();
        },
      },
    ),
  );
}
