import 'controller/delete_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class DeleteAccountDialog extends StatelessWidget {
  DeleteAccountDialog(this.controller, {Key? key}) : super(key: key);

  DeleteAccountController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 396.h,
        // height: 360.v,
        // width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 30.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16,),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.deleteAccount,
                height: 120.adaptSize,
                width: 120.adaptSize,
              ),
              // Container(
              //     height: 120.adaptSize,
              //     width: 120.adaptSize,
              //     padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 31.v),
              //     decoration: AppDecoration.fillRed5001
              //         .copyWith(borderRadius: BorderRadiusStyle.circleBorder60),
              //     child: CustomImageView(
              //         imagePath: ImageConstant.imgThumbsUpRed700,
              //         height: 57.v,
              //         width: 40.h,
              //         alignment: Alignment.center)),
              SizedBox(height: 28.v),
              Text("msg_are_you_sure_you".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall!.copyWith(height: 1.3)),
              SizedBox(height: 28.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: CustomOutlinedButton(
                        height: 54.v,
                        text: "lbl_no".tr,
                        width: double.infinity,
                        // margin: EdgeInsets.only(right: 8.h),
                        onPressed: () {
                          Get.back();
                        })),
                SizedBox(width: 16.h),
                Expanded(
                    child: CustomElevatedButton(
                        height: 54.v,
                        width: double.infinity,
                        text: "lbl_yes".tr,
                        // margin: EdgeInsets.only(left: 8.h),
                        onPressed: () {
                          Get.back();
                        }))
              ]),
              // SizedBox(height: 30.v),
            ]));
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapNo() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  /// Navigates to the onboardingOneScreen when the action is triggered.
  onTapYes() {
    Get.toNamed(
      AppRoutes.onboardingOneScreen,
    );
  }
}
