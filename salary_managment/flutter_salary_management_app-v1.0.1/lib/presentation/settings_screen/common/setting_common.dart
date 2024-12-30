import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';


class SettingCommon extends StatelessWidget {
  final String text;
  final String image;
  const SettingCommon({Key? key, required this.text, required this.image}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.v,
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(
            children: [
              CustomImageView(
                imagePath: image,
                  // imagePath: ImageConstant.imgIcLocalLanguage,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(bottom: 1.v)),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 0.v),
                    child: Text(text.tr,
                        style: theme.textTheme.bodyLarge)),
              ),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 5.v))
            ]));
  }
}
