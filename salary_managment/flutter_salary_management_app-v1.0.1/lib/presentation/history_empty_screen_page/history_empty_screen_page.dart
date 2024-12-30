import 'controller/history_empty_screen_controller.dart';
import 'models/history_empty_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class HistoryEmptyScreenPage extends StatelessWidget {
  HistoryEmptyScreenPage({Key? key})
      : super(
          key: key,
        );

  HistoryEmptyScreenController controller =
      Get.put(HistoryEmptyScreenController(HistoryEmptyScreenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(

            children: [
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
                  centerTitle: true,
                  title: AppbarSubtitle(
                    text: "lbl_history".tr,
                  ),
                ),
              ),
              Spacer(
                flex: 48,
              ),
              _buildPasswordReset(),
              Spacer(
                flex: 51,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   // return CustomAppBar(
  //   //   centerTitle: true,
  //   //   title: AppbarSubtitle(
  //   //     text: "lbl_history".tr,
  //   //   ),
  //   //   styleType: Style.bgOutline,
  //   // );
  // }

  /// Section Widget
  Widget _buildPasswordReset() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120.adaptSize,
            width: 120.adaptSize,
            padding: EdgeInsets.all(27.h),
            decoration: AppDecoration.fillDeepPurple.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder60,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgClock,
              height: 66.adaptSize,
              width: 66.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 33.v),
          Text(
            "lbl_no_history_yet".tr,
            style: CustomTextStyles.headlineSmallBlack90001,
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: 333.h,
            child: Text(
              "msg_your_history_is".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeBlack90001.copyWith(
                height: 1.47,
              ),
            ),
          ),
          SizedBox(height: 25.v),
          CustomElevatedButton(
            text: "lbl_go_to_home".tr,
            margin: EdgeInsets.symmetric(horizontal: 42.h),
            buttonTextStyle: CustomTextStyles.titleMediumWorkSansWhiteA700,
          ),
        ],
      ),
    );
  }
}
