import 'package:flutter/material.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';

class SelectCard extends StatelessWidget {
  final String? genderImg;
  final  bool isSelect;
  const SelectCard({super.key, this.genderImg, required this.isSelect});

  @override
  Widget build(BuildContext context) {
    return  Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray50,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: isSelect?theme.colorScheme.primary:Color(0xFFF8F8F8),
                width: getHorizontalSize(2)),
            borderRadius:
            BorderRadiusStyle.roundedBorder20),
        child: Container(

            padding: EdgeInsets.all(
                39,
                ),
            decoration: AppDecoration.outline4.copyWith(
                borderRadius:
                BorderRadiusStyle.roundedBorder20),
            child: Stack(children: [
              CustomImageView(
                  svgPath: genderImg??ImageConstant.imgUser,
                  height: getVerticalSize(100),
                  width: getHorizontalSize(100),
                  alignment: Alignment.center)
            ])));
  }
}
