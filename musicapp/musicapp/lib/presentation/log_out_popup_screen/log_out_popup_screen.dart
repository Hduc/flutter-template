import '../../widgets/app_bar/custum_bottom_bar_controller.dart';
import 'controller/log_out_popup_controller.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';
import 'package:musicapp/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class LogOutPopupScreen extends GetWidget<LogOutPopupController> {
  const LogOutPopupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomBottomBarController>(
      init: CustomBottomBarController(),
      builder:(controller) =>  Container(
        decoration: AppDecoration.white.copyWith(
          color: appTheme.white700,
            borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Padding(
          padding:getPadding(top: 24,bottom: 24,left: 16,right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Text(
                  "Are you sure want to logout?",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.titleLarge,
                ),
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
                      text: "lbl_logout2".tr,
                      margin: getMargin(
                        left: 8,
                      ),
                      onTap: (){
                        PrefUtils.setIsSignIn(true);
                        controller.getIndex(0);
                        Get.offAllNamed(AppRoutes.loginScreen);
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
        ),
      ),
    );
  }
}
