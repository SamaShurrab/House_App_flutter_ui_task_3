import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color backgroundColor;
  final double fontSize;
  final Color fontColor;
  final FontWeight fontWeight;
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.backgroundColor,
    required this.fontSize,
    required this.fontColor,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,

        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: fontSize,
                color: fontColor,
                fontWeight: fontWeight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
