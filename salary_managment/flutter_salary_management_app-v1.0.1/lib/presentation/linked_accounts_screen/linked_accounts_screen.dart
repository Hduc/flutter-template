import 'controller/linked_accounts_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

class LinkedAccountsScreen extends GetWidget<LinkedAccountsController> {
  const LinkedAccountsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildAppBar(),
        body: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.v),
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
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              centerTitle: true,
              title: AppbarSubtitle(
                text: "lbl_linked_accounts".tr,
              ),
            ),
          ),
          SizedBox(height: 40.h,),
          CustomImageView(
              imagePath: ImageConstant.profile,
              height: 100.adaptSize,
              width: 100.adaptSize,
              fit: BoxFit.cover,
              radius: BorderRadius.circular(50.h)),
          SizedBox(height: 16.v),
          Text("lbl_ronald_richards".tr,
              style: theme.textTheme.headlineMedium),
          SizedBox(height: 8.v),
          Text("lbl_senior_manager".tr,
              style: CustomTextStyles.titleLargeGray600),
          SizedBox(height: 21.v),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.h,),
              children: [

                _buildAppleRow(
                    favoriteImage: ImageConstant.google,
                    appleLabel: "lbl_google2".tr,
                    connectedLabel: "lbl_connected".tr),
                SizedBox(height: 15.v),
                _buildAppleRow(
                    favoriteImage: ImageConstant.imgFavorite,
                    appleLabel: "lbl_apple".tr,
                    connectedLabel: "lbl_connected".tr),
                SizedBox(height: 15.v),
                _buildFacebookRow(),
                SizedBox(height: 15.v),
                _buildTwitterXRow(),
                SizedBox(height: 4.v)
            ],),
          )


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
  //       title: AppbarSubtitle(text: "lbl_linked_accounts".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Section Widget
  Widget _buildFacebookRow() {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray2001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.faceBookSecond,
              height: 40.adaptSize,
              width: 40.adaptSize,
              // margin: EdgeInsets.only(left: 8.h
              ),
          // CustomIconButton(
          //     height: 40.adaptSize,
          //     width: 40.adaptSize,
          //     padding: EdgeInsets.all(10.h),
          //     decoration: IconButtonStyleHelper.fillBlueA,
          //     child: CustomImageView(imagePath: ImageConstant.facebook)),
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 9.v, bottom: 9.v),
                child: Text("lbl_facebook".tr,
                    style: CustomTextStyles.titleMediumSemiBold)),
          ),
          Padding(
              padding: EdgeInsets.only(top: 11.v, bottom: 10.v),
              child: Text("lbl_connect".tr,
                  style: CustomTextStyles.titleSmallOnSecondaryContainer))
        ]));
  }

  /// Section Widget
  Widget _buildTwitterXRow() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 24.v),
        decoration: AppDecoration.outlineGray2001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgShape,
              height: 22.v,
              width: 24.h,
              margin: EdgeInsets.only(left: 8.h)),
          Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Text("lbl_x".tr,
                  style: CustomTextStyles.titleMediumSemiBold)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("lbl_connect".tr,
                  style: CustomTextStyles.titleSmallRed700Bold))
        ]));
  }

  /// Common widget
  Widget _buildAppleRow({
    required String favoriteImage,
    required String appleLabel,
    required String connectedLabel,
  }) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray2001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: favoriteImage,
              height: 40.adaptSize,
              width: 40.adaptSize),
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 0.v, bottom: 0.v),
                child: Text(appleLabel,
                    style: CustomTextStyles.titleMediumSemiBold.copyWith(
                        color: theme.colorScheme.onSecondaryContainer))),
          ),
          Padding(
              padding: EdgeInsets.only(top: 0.v, bottom: 0.v),
              child: Text(connectedLabel,
                  style: CustomTextStyles.titleSmallGreenA700Bold
                      .copyWith(color: appTheme.greenA700)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
