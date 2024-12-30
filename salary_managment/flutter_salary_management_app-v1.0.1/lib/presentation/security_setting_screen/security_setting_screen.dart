import 'controller/security_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_salary_management_app/widgets/custom_switch.dart';

class SecuritySettingScreen extends GetWidget<SecuritySettingController> {
  const SecuritySettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                text: "msg_security_setting".tr,
              ),
            ),
          ),
         Expanded(child: Padding(
           padding:  EdgeInsets.all(16.h),
           child: Column(
             children: [
               _buildProfileRow1(),
               SizedBox(height: 16.v),
               _buildProfileRow2(),
               SizedBox(height: 16.v),
               _buildProfileRow3(),
               SizedBox(height: 16.v),
               _buildProfileRow4(),
               SizedBox(height: 5.v)
             ],
           ),
         ))
        ]));
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //       leadingWidth: 40.h,
  //       leading: AppbarLeadingImage(
  //           imagePath: ImageConstant.imgArrowLeft,
  //           margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
  //           onTap: () {
  //             onTapArrowLeft();
  //           }),
  //       centerTitle: true,
  //       title: AppbarSubtitle(text: "msg_security_setting".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Section Widget
  Widget _buildProfileRow1() {
    return GestureDetector(
        onTap: () {
          onTapProfileRow1();
        },
        child: Container(
          height: 54.v,
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
            decoration: AppDecoration.outlineGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Row(
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgIcLock,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v)),
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 8.h, top: 0.v),
                        child: Text("lbl_change_password".tr,
                            style: theme.textTheme.bodyLarge)),
                  ),
                  CustomImageView(
                      imagePath: ImageConstant.imgShapeOnsecondarycontainer,
                      height: 12.v,
                      width: 6.h,
                      margin:
                          EdgeInsets.only(top: 7.v, right: 4.h, bottom: 7.v))
                ])));
  }

  /// Section Widget
  Widget _buildProfileRow2() {
    return Container(
      height: 54.v,
        padding: EdgeInsets.symmetric(horizontal: 15.h, ),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIcFaceId,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  // margin: EdgeInsets.only(bottom: 1.v)
              ),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 0.v),
                    child: Text("msg_face_recognition".tr,
                        style: theme.textTheme.bodyLarge)),
              ),
              Obx(() => CustomSwitch(
                  // margin: EdgeInsets.only(top: 5.v),
                  value: controller.isSelectedSwitch.value,
                  onChange: (value) {
                    controller.isSelectedSwitch.value = value;
                  }))
            ]));
  }

  /// Section Widget
  Widget _buildProfileRow3() {
    return Container(
      height: 54.v,
        padding: EdgeInsets.symmetric(horizontal: 16.h, ),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIcFingerprint,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(bottom: 0.v)),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 8.h, ),
                    child: Text("lbl_fingerprint".tr,
                        style: theme.textTheme.bodyLarge)),
              ),
              Obx(() => CustomSwitch(
                  // margin.: EdgeInsets.only(top: 5.v),
                  value: controller.isSelectedSwitch1.value,
                  onChange: (value) {
                    controller.isSelectedSwitch1.value = value;
                  }))
            ]));
  }

  /// Section Widget
  Widget _buildProfileRow4() {
    return Container(
      height: 54.v,
        padding: EdgeInsets.symmetric(horizontal: 16.h, ),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(

            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIcPrivacy,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(top: 0.v)),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 8.h,),
                    child: Text("msg_2_step_verification".tr,
                        style: theme.textTheme.bodyLarge)),
              ),
              Spacer(),
              Obx(() => CustomSwitch(
                  // margin: EdgeInsets.only(top: 4.v),
                  value: controller.isSelectedSwitch2.value,
                  onChange: (value) {
                    controller.isSelectedSwitch2.value = value;
                  }))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the changePasswordScreen when the action is triggered.
  onTapProfileRow1() {
    Get.toNamed(
      AppRoutes.changePasswordScreen,
    );
  }
}
