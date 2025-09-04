import 'package:flutter/material.dart';
import 'package:flutter_ui_task3/constants/colors.dart';
import 'package:flutter_ui_task3/custom%20widget%20design/custom_card.dart';

class CustomSectionServices extends StatelessWidget {
  final List servicesNameList;
  final int index;
  const CustomSectionServices({
    super.key,
    required this.servicesNameList,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      width: 356,
      height: 93,
      cardColor: Colors.white,
      widget: Center(
        child: ListTile(
          leading: Image.asset(
            servicesNameList[index]["servicesImage"],
            height: 70,
            width: 70,
            fit: BoxFit.contain,
          ),
          title: Text(
            servicesNameList[index]["servicesName"],
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            servicesNameList[index]["servicesDescripton"],
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              letterSpacing: -0.43,
              color: AppColors.descriptionTextColor,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_rounded,
            size: 48,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
