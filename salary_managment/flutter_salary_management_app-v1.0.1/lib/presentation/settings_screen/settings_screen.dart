import 'common/setting_common.dart';
import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_salary_management_app/presentation/delete_account_dialog/delete_account_dialog.dart';
import 'package:flutter_salary_management_app/presentation/delete_account_dialog/controller/delete_account_controller.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: _buildAppBar(),
        body: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.v),
            // decoration: AppDecoration.outlineGray300,
            decoration: BoxDecoration(
              // color: appTheme.gray200,
              border: Border(
                bottom: BorderSide(
                  color: appTheme.gray200,
                  width: 1.h,
                ),
              ),
            ),
            child: CustomAppBar(
              centerTitle: true,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              title: AppbarSubtitle(
                text: "lbl_settings".tr,
              ),
            ),
          ),
          Expanded(child: Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    onTapProfileRow1();
                  },
                  child: SettingCommon(
                    text: "lbl_language".tr,
                    image: ImageConstant.imgIcLocalLanguage

                  ),
                ),
                // _buildProfileRow1(),
                SizedBox(height: 16.v),
                GestureDetector(
                  onTap: () {
                    onTapProfileRow2();
                  },
                  child: SettingCommon(
                      text: "lbl_privacy_policy".tr,
                      image: ImageConstant.imgIcTerms

                  ),
                ),
                SizedBox(height: 16.v),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.helplineNumberScreen);
                  },
                  child: SettingCommon(
                      text: "lbl_helpline_number".tr,
                      image: ImageConstant.imgIcQuestion

                  ),
                ),
                SizedBox(height: 16.v),
                GestureDetector(
                  onTap: () {
                    onTapProfileRow3();
                  },
                  child: SettingCommon(
                      text: "msg_terms_condition".tr,
                      image: ImageConstant.imgIcInfo

                  ),
                ),

                SizedBox(height: 16.v),
                GestureDetector(
                  onTap: () {
                    onTapProfileRow4();
                  },
                  child: SettingCommon(
                      text: "lbl_delete_account".tr,
                      image: ImageConstant.imgIcTrash

                  ),
                ),                SizedBox(height: 5.v)
              ],
            ),
          ))

        ]));
  }






  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the languageScreen when the action is triggered.
  onTapProfileRow1() {
    Get.toNamed(
      AppRoutes.languageScreen,
    );
  }

  /// Navigates to the privacyPolicyScreen when the action is triggered.
  onTapProfileRow2() {
    Get.toNamed(
      AppRoutes.privacyPolicyScreen,
    );
  }

  /// Navigates to the termsAndConditionScreen when the action is triggered.
  onTapProfileRow3() {
    Get.toNamed(
      AppRoutes.termsAndConditionScreen,
    );
  }

  /// Displays a dialog with the [DeleteAccountDialog] content.
  onTapProfileRow4() {
    Get.dialog(

        AlertDialog(

      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.symmetric(horizontal: 20.v),
      content: DeleteAccountDialog(
        Get.put(
          DeleteAccountController(),
        ),
      ),
    ));
  }
}
