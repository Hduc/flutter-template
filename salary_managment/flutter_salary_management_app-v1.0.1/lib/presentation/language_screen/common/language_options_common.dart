import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

import '../controller/language_controller.dart';

class LanguageOptionsCommon extends StatelessWidget {
  final String text;
  final String image;
  final int index;
  const LanguageOptionsCommon({Key? key, required this.text, required this.image, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // LanguageController languageController = Get.put(LanguageController());
    return GetBuilder<LanguageController>(init: LanguageController(),builder: (languageController) {
      return GestureDetector(
        onTap: () {
          languageController.selectedIndex = index;
languageController.update();

        },
        child: Container(
          width: 396.h,
          height: 54.v,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          decoration: BoxDecoration(color: Color(0xFFF8F8F8)),
          child: Row(
            children: [
              CustomImageView(
                imagePath: image,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 1.v),
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Text(
                  text.tr,
                  style: TextStyle(
                    color: Color(0xFF151515),
                    fontSize: 17.fSize,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),languageController.selectedIndex == index?CustomImageView(
                  imagePath: ImageConstant.checkmark,
                  height: 24.adaptSize,
                  width: 24.adaptSize):SizedBox()
            ],
          ),
        ),
      );
    },);
  }
}
