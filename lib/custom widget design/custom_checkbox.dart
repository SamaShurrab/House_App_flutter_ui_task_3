import 'package:flutter/material.dart';
import 'package:flutter_ui_task3/constants/colors.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<StatefulWidget> createState() {
    return CustomCheckboxState();
  }
}

class CustomCheckboxState extends State<CustomCheckbox> {
 static bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: .8,
      child: Checkbox(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        side: BorderSide(color: AppColors.checkBoxBorderColor),
        activeColor: AppColors.checkboxColorButtonText,
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = !isChecked;
          });
        },
      ),
    );
  }
}
