import 'package:investment_app/presentation/homepage_vthree_container_screen/homepage_vthree_container_screen.dart';
import 'package:investment_app/presentation/onboarding_six_screen/binding/onboarding_six_binding.dart';

import '../onboarding_six_screen/onboarding_six_screen.dart';
import 'controller/logout_controller.dart';
import 'package:flutter/material.dart';
import 'package:investment_app/core/app_export.dart';
import 'package:investment_app/widgets/custom_button.dart';
import 'package:investment_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class LogoutDialog extends StatelessWidget {
  LogoutDialog(this.controller);

  LogoutController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(width),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Padding(
                padding: getPadding(
                  top: 9,
                  bottom: 1,
                ),
                child: Text(
                  "lbl_log_out2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold20Black90001.copyWith(
                    height: getVerticalSize(
                      1.12,
                    ),
                  ),
                ),
              ),
              CustomIconButton(
                height: 36,
                width: 36,
                margin: getMargin(
                  left: 0,
                ),
                variant: IconButtonVariant.OutlineGray20001,
                shape: IconButtonShape.RoundedBorder8,
                padding: IconButtonPadding.PaddingAll10,
                child: CustomImageView(
                  svgPath: ImageConstant.imgArrowrightBlack90001,
                ),
              ),

            ],
          ).paddingOnly(left: 16),
          Padding(
            padding: getPadding(
              top: 26,
            ),
            child: Text(
              "msg_do_you_want_to_log".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyle.txtInterMedium14Bluegray400.copyWith(
                height: getVerticalSize(
                  1.18,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () => Get.back(),
                    height: 48,
                    text: "lbl_cancel".tr,
                    variant: ButtonVariant.OutlineBluegray10002,
                    shape: ButtonShape.RoundedBorder24,
                    fontStyle: ButtonFontStyle.InterSemiBold14,
                  ),
                ),
                SizedBox(width: getHorizontalSize(16),),
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      PrefUtils.setIsLogin(true);
                      Get.off(OnboardingSixScreen());
                    },
                    height: 48,
                    text: "lbl_log_out3".tr,
                    variant: ButtonVariant.FillBlack90001,
                    shape: ButtonShape.RoundedBorder24,
                    padding: ButtonPadding.PaddingAll12,
                    fontStyle: ButtonFontStyle.InterSemiBold14WhiteA700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ).paddingOnly(left: 16,right: 16,bottom: 16,top: 7),
    );
  }
}
