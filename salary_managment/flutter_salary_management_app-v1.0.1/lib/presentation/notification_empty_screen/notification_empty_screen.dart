import 'controller/notification_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';

class NotificationEmptyScreen extends GetWidget<NotificationEmptyController> {
  const NotificationEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.v),
                    // decoration: AppDecoration.outlineGray300,
                    decoration: BoxDecoration(
                      color: appTheme.gray200,
                      border: Border(
                        bottom: BorderSide(
                          color: appTheme.gray300,
                          width: 1.h,
                        ),
                      ),
                    ),
                    child: CustomAppBar(
                      leading: AppbarLeadingImage(
                          imagePath: ImageConstant.imgArrowLeft,
                          margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                          onTap: () {
                            onTapArrowLeft();
                          }),
                      centerTitle: true,
                      title: AppbarSubtitle(
                        text: "lbl_notifications".tr,
                      ),
                    ),
                  ),
                  Spacer(flex: 35),
                  _buildPasswordReset(),
                  Spacer(flex: 64)
                ]))));
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
  //       title: AppbarSubtitle(text: "lbl_notifications".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Section Widget
  Widget _buildPasswordReset() {
    return GestureDetector(
        onTap: () {
          onTapPasswordReset();
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 26.v),
            decoration: AppDecoration.white
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                  height: 120.adaptSize,
                  width: 120.adaptSize,
                  padding:
                      EdgeInsets.symmetric(horizontal: 38.h, vertical: 29.v),
                  decoration: AppDecoration.fillDeepPurple
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder60),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 62.v,
                      width: 43.h,
                      alignment: Alignment.center)),
              SizedBox(height: 33.v),
              Text("msg_no_notifictions".tr,
                  style: CustomTextStyles.headlineSmallBlack90001),
              SizedBox(height: 10.v),
              SizedBox(
                  width: 307.h,
                  child: Text("msg_your_notification".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeBlack90001
                          .copyWith(height: 1.47))),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                  text: "lbl_go_to_profile".tr,
                  margin: EdgeInsets.symmetric(horizontal: 28.h),
                  buttonTextStyle:
                      CustomTextStyles.titleMediumWorkSansWhiteA700)
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapPasswordReset() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }
}
