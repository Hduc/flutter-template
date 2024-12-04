import 'controller/password_has_been_change_controller.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class PasswordHasBeenChangeDialog extends StatelessWidget {
  PasswordHasBeenChangeDialog(this.controller);

  PasswordHasBeenChangeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(396),
        padding: getPadding(top: 30, bottom: 30),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgTickcircle,
                  height: getSize(130),
                  width: getSize(130)),
              Padding(
                  padding: getPadding(top: 15),
                  child: Text("msg_your_password_has".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtBody)),
              CustomButton(
                  height: getVerticalSize(53),
                  text: "lbl_go_to_login".tr,
                  margin: getMargin(left: 77, top: 29, right: 77),
                  onTap: () {
                    PrefUtils.setIsLogin(true);
                    onTapGotologin();
                  })
            ]));
  }

  onTapGotologin() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}
