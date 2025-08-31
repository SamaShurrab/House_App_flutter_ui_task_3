import 'package:flutter/material.dart';
import 'package:flutter_ui_task3/constants/colors.dart';
import 'package:flutter_ui_task3/constants/paths.dart';
import 'package:flutter_ui_task3/constants/string.dart';
import 'package:flutter_ui_task3/custom%20widget%20design/circular_widget.dart';
import 'package:flutter_ui_task3/custom%20widget%20design/custom_button.dart';
import 'package:flutter_ui_task3/pages/register_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.beginColorGradient, AppColors.endColorGradient],
            begin: Alignment.topLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularWidget(
              height: 100,
              width: 100,
              widget: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(Paths.userImagePath),
              ),
            ),
            SizedBox(height: 50),
            Text(
              AppStrings.welcomeStatement,
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Text(
              AppStrings.splashdescription,
              style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.white70,

                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 50),
            CustomButton(
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: Text(
                AppStrings.getStartedBtn,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 15,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
