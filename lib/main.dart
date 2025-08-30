import 'package:flutter/material.dart';
import 'package:flutter_ui_task3/pages/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
    ),
  );
}
