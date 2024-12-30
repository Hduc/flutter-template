import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';
import 'package:musicapp/widgets/custom_outlined_button.dart';

import 'controller/rate_us_controller.dart';

class RateUsScreen extends GetWidget<RateUsController> {
  const RateUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return






      Container(

        padding: getPadding(
            left: 16, top: 23, right: 16, bottom: 23),
        decoration: AppDecoration.white.copyWith(
            color: appTheme.white700,
            borderRadius: BorderRadiusStyle.roundedBorder24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: getPadding(top: 1),
                  child: Text("msg_rate_us_experirnce".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleLarge)),
              Container(
                  width: getHorizontalSize(244),
                  margin: getMargin(top: 14),
                  child: Text("msg_please_let_us_know".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge)),
            SizedBox(height: getVerticalSize(40),),
              RatingBar(
                initialRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 40,
                glow: false,
                ratingWidget: RatingWidget(
                    full: CustomImageView(
                      svgPath: ImageConstant.imgRatingFill,
                      height: getVerticalSize(40),
                      width: getVerticalSize(40),
                    ),
                    half: CustomImageView(
                      svgPath: ImageConstant.imgRatingEmpty,
                      height: getVerticalSize(40),
                      width: getVerticalSize(40),
                    ),
                    empty: CustomImageView(
                      svgPath: ImageConstant.imgRatingEmpty,
                      height: getVerticalSize(40),
                      width: getVerticalSize(40),
                    )),
                itemPadding: getPadding(left: 12, right: 12),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
             Padding(
               padding: getPadding(top: 48),
               child: Row(
                 children: [
                   CustomOutlinedButton(
                     width: getSize(170),
                     text: "lbl_cancel".tr,
                     margin: getMargin(
                       right: 8,
                     ),
                     onTap: (){
                       Get.back();
                     },
                     buttonStyle: ButtonThemeHelper
                         .outlineDeeppurpleA200
                         .copyWith(
                         fixedSize: MaterialStateProperty
                             .all<Size>(Size(
                             double
                                 .maxFinite,
                             getVerticalSize(
                                 54)))),
                     buttonTextStyle: TextThemeHelper
                         .titleMediumDeeppurpleA200,
                   ),
                   SizedBox(
                     width: getHorizontalSize(10),
                   ),
                   CustomElevatedButton(
                     width: getSize(170),
                     text: "lbl_submit".tr,
                     margin: getMargin(
                       left: 8,
                     ),
                     onTap: (){
                       Get.back();
                     },
                     buttonStyle: ButtonThemeHelper
                         .fillDeeppurpleA200
                         .copyWith(
                         fixedSize: MaterialStateProperty
                             .all<Size>(Size(
                             double
                                 .maxFinite,
                             getVerticalSize(
                                 54)))),
                     buttonTextStyle: TextThemeHelper
                         .titleMediumPrimary_1,
                   ),
                 ],
               ),
             )
            ],
          ),
      );

  }

  onTapCancel() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }


  onTapSubmit() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
