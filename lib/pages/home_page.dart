import 'package:flutter/material.dart';
import 'package:flutter_ui_task3/constants/colors.dart';
import 'package:flutter_ui_task3/constants/dimens.dart';
import 'package:flutter_ui_task3/constants/paths.dart';
import 'package:flutter_ui_task3/constants/string.dart';
import 'package:flutter_ui_task3/custom%20widget%20design/circular_widget.dart';
import 'package:flutter_ui_task3/custom%20widget%20design/custom_card.dart';
import 'package:flutter_ui_task3/custom%20widget%20design/custom_section_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> housesName = [
      AppStrings.addWorkers,
      "Tobi\nLateef",
      "Queen\nNeedle",
      "Joan\nBlessing",
      "Joan\nBlessing",
      "Joan\nBlessing",
      "Joan\nBlessing",
      "Joan\nBlessing",
      "Joan\nBlessing",
      "Joan\nBlessing",
      "Joan\nBlessing",
    ];

    List services = [
      {
        "servicesName": AppStrings.electrical,
        "servicesImage": Paths.electricalImage,
        "servicesDescripton": AppStrings.description,
      },
      {
        "servicesName": AppStrings.others,
        "servicesImage": Paths.othersImage,
        "servicesDescripton": AppStrings.description,
      },
    ];
    List feedbacks = [Paths.job1, Paths.job2];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: Text(
          AppStrings.appBarTitle,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: AppColors.primaryColor),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 69,
                    height: 82.72,
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.all(Radius.elliptical(50, 60)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: ClipOval(
                        child: Image.asset(
                          width: 55,
                          height: 65.94,
                          Paths.userImagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.userName,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        AppStrings.jobTitle,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    height: AppDimensions.heightCardInformation,
                    width: AppDimensions.widthCardInformation,
                    cardColor: AppColors.secondaryColor,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.walletBalance,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          AppStrings.walletBalanceNumber,
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          AppStrings.totalService,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          AppStrings.totalServiceNumber,
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
                  CustomCard(
                    height: AppDimensions.heightCardInformation,
                    width: AppDimensions.widthCardInformation,
                    cardColor: AppColors.primaryColor,
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 25,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              AppStrings.masterCard,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            AppStrings.masterCardNumber,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            AppStrings.masterCardName,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppDimensions.heightBetweenSections),
              CustomSectionName(sectionName: AppStrings.houses),
              SizedBox(height: AppDimensions.heightBetweenSectionsAndContents),
              SizedBox(
                width: double.infinity,
                height: AppDimensions.heightCardInformation,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
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
                            housesName[index],
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
                  },
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: AppDimensions.heightBetweenSections),
              CustomSectionName(sectionName: AppStrings.services),
              ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CustomCard(
                    width: 356,
                    height: 93,
                    cardColor: Colors.white,
                    widget: Center(
                      child: ListTile(
                        leading: Image.asset(
                          services[index]["servicesImage"],
                          height: 60,
                          width: 60,
                        ),
                        title: Text(
                          services[index]["servicesName"],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          services[index]["servicesDescripton"],
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
                },
              ),
              SizedBox(height: AppDimensions.heightBetweenSections),
              CustomSectionName(sectionName: AppStrings.feedbacks),
              SizedBox(height: AppDimensions.heightBetweenSectionsAndContents),
              SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Positioned(
                          left: 0,
                          bottom: 3,
                          top: 3,
                          child: CustomCard(
                            cardColor: Colors.grey,
                            widget: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                AppDimensions.borderRadiusCustomCard,
                              ),
                              child: Image.asset(
                                feedbacks[index],
                                width: 270,
                                height: 85,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CustomCard(
                            width: 305,
                            height: 90,
                            cardColor: Colors.white,
                            widget: Row(
                              spacing: 10,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    Paths.userImagePath,
                                    width: 60,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  AppStrings.feedback1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
