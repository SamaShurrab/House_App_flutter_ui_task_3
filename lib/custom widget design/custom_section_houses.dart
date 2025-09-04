import 'package:flutter/material.dart';
import 'package:flutter_ui_task3/constants/colors.dart';
import 'package:flutter_ui_task3/constants/paths.dart';
import 'package:flutter_ui_task3/custom%20widget%20design/circular_widget.dart';
import 'package:flutter_ui_task3/custom%20widget%20design/custom_card.dart';

class CustomSectionHouses extends StatelessWidget {
  final List<String> housesNameList;
  final int index;
  const CustomSectionHouses({
    super.key,
    required this.housesNameList,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      width: 110,
      height: 120,
      cardColor: Colors.white,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularWidget(
            height: 55,
            width: 55,
            color: index != 0
                ? AppColors.secondaryColor
                : AppColors.primaryColor,
            widget: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: index != 0
                    ? Image.asset(Paths.userImagePath)
                    : Icon(Icons.add, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            housesNameList[index],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
