import 'controller/history_transaction_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';
import 'package:flutter_salary_management_app/widgets/custom_text_form_field.dart';

class HistoryTransactionScreen extends GetWidget<HistoryTransactionController> {
  const HistoryTransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
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
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              centerTitle: true,
              title: AppbarSubtitle(
                text: "msg_transaction_history".tr,
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.teansactionHistroy,
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        alignment: Alignment.center
                    ),
                    // Container(
                    //     height: 80.adaptSize,
                    //     width: 80.adaptSize,
                    //     padding: EdgeInsets.all(20.h),
                    //     decoration: AppDecoration.fillDeepPurple.copyWith(
                    //         borderRadius: BorderRadiusStyle.circleBorder40),
                    //     child: CustomImageView(
                    //         imagePath: ImageConstant.imgCheckmark,
                    //         height: 39.adaptSize,
                    //         width: 39.adaptSize,
                    //         alignment: Alignment.center)),
                    SizedBox(height: 11.v),
                    Text("msg_successful_transaction".tr,
                        style: CustomTextStyles.titleLargePrimaryContainer),
                    SizedBox(height: 28.v),
                    _buildTransactionDetails(),
                    SizedBox(height: 16.v),
                    CustomTextFormField(
                        controller: controller.notesvalueController,
                        hintText: "lbl_notes".tr,
                        hintStyle: CustomTextStyles.titleMediumPrimaryContainer,
                        textInputAction: TextInputAction.done,
                        maxLines: 3),
                    SizedBox(height: 5.v)
                  ],
                ),
              ))
        ]),
        bottomNavigationBar: _buildConfirm(),);
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
  //       title: AppbarSubtitle(text: "msg_transaction_history".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Section Widget
  Widget _buildTransactionDetails() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTimeDate(
                  timeDateText: "msg_transaction_type".tr,
                  timeText: "lbl_transfer".tr),
              SizedBox(height: 19.v),
              _buildTimeDate(
                  timeDateText: "lbl_time_date".tr,
                  timeText: "msg_10_04_am16_10_2024".tr),
              SizedBox(height: 18.v),
              _buildTimeDate(
                  timeDateText: "lbl_transfer_bank".tr,
                  timeText: "lbl_bank_of_america".tr),
              SizedBox(height: 20.v),
              _buildTimeDate(
                  timeDateText: "msg_account_destination".tr,
                  timeText: "lbl_ronald_r".tr),
              SizedBox(height: 20.v),
              _buildTimeDate(
                  timeDateText: "lbl_nominee".tr, timeText: "lbl_33_740".tr),
              SizedBox(height: 19.v),
              _buildTimeDate(
                  timeDateText: "lbl_admin_fee".tr, timeText: "lbl_02".tr),
              SizedBox(height: 19.v),
              _buildTimeDate(
                  timeDateText: "lbl_deduction".tr, timeText: "lbl_02".tr)
            ]));
  }

  /// Section Widget
  Widget _buildConfirm() {
    return CustomElevatedButton(
        text: "lbl_confirm".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 40.v),
        onPressed: () {
          Get.back();
          // onTapConfirm();
        });
  }

  /// Common widget
  Widget _buildTimeDate({
    required String timeDateText,
    required String timeText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(timeDateText,
          style: CustomTextStyles.bodyLargeGray600
              .copyWith(color: appTheme.gray600)),
      Text(timeText,
          style: theme.textTheme.bodyLarge!
              .copyWith(color: theme.colorScheme.onSecondaryContainer))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the historyTransactionScreenTabContainerScreen when the action is triggered.
  onTapConfirm() {
    Get.toNamed(
      AppRoutes.historyTransactionScreenTabContainerScreen,
    );
  }
}
