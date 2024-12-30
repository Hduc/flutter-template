import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';


class ProfileOptionsCommon extends StatelessWidget {
  final String image;
  final String text;
  const ProfileOptionsCommon({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54.v,
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: image,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(top: 2.v)),
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
