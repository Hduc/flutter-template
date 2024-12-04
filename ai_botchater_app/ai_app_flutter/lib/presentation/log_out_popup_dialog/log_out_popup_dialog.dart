import 'controller/log_out_popup_controller.dart';
import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LogOutPopupDialog extends StatelessWidget {
  LogOutPopupDialog(this.controller);

  LogOutPopupController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        350,
      ),
      padding: getPadding(
        left: 20,
        top: 25,
        right: 20,
        bottom: 23,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: Constant.imagePath + "logout.png",
            height: getSize(
              140,
            ),
            width: getSize(
              140,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 16,
            ),
            child: Text(
              "lbl_log_out2".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtAirbnbCerealWMd22,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 16,
            ),
            child: Text(
              "msg_are_you_sure_you".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtBodyGray900.copyWith(
                letterSpacing: getHorizontalSize(
                  0.16,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      Get.back();
                    },
                    height: getVerticalSize(
                      56,
                    ),
                    text: "lbl_cancel".tr,
                    margin: getMargin(
                      right: 8,
                    ),
                    variant: ButtonVariant.OutlineGray30001,
                    fontStyle: ButtonFontStyle.AirbnbCerealWBd18Black900,
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      PrefUtils.setIsLogin(true);
                      Get.toNamed(
                        AppRoutes.loginScreen,
                      );
                    },
                    height: getVerticalSize(
                      56,
                    ),
                    text: "lbl_yes_logout".tr,
                    margin: getMargin(
                      left: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
