import 'package:flutter/material.dart';
import 'package:flutter_ui_task3/constants/dimens.dart';

class CustomCard extends StatelessWidget {
  final Color cardColor;
  final Widget widget;
  final double? height;
  final double? width;
  const CustomCard({
    super.key,
    required this.cardColor,
    required this.widget,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        color: cardColor,
        shadowColor: Colors.grey,
        elevation: AppDimensions.elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(
            AppDimensions.borderRadiusCustomCard,
          ),
        ),
        child: widget,
      ),
    );
  }
}
