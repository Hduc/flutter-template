import 'controller/log_out_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class LogOutDialog extends StatelessWidget {
  LogOutDialog(this.controller);

  LogOutController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        396,
      ),
      padding: getPadding(
        left: 32,
        top: 24,
        right: 32,
        bottom: 24,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_log_out2".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtSFProTextBold20,
          ),
          Padding(
            padding: getPadding(
              top: 16,
            ),
            child: Text(
              "msg_are_you_sure_you".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtBody,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: getPadding(
                left: 58,
                top: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Text(
                      "lbl_cancel".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtCalloutGray600,
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      onTap: () {
                        PrefUtils.setIsLogin(true);
                        Get.toNamed(AppRoutes.logInScreen);
                      },
                      height: getVerticalSize(
                        40,
                      ),
                      text: "lbl_log_out2".tr,
                      margin: getMargin(
                        left: 40,
                      ),
                      shape: ButtonShape.RoundedBorder19,
                      padding: ButtonPadding.PaddingAll8,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
