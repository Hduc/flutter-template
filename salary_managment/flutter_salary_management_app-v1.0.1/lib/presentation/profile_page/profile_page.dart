import 'common/profile_options_common.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_salary_management_app/presentation/log_out_dialog/log_out_dialog.dart';
import 'package:flutter_salary_management_app/presentation/log_out_dialog/controller/log_out_controller.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // appBar: _buildAppBar(),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                      title: AppbarSubtitle(
                        text: "lbl_profile".tr,
                      ),
                    ),
                  ),
                  Expanded(child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.profile,
                          height: 100.adaptSize,
                          width: 100.adaptSize),
                      SizedBox(height: 17.v),
                      Text("lbl_ronald_richards".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 11.v),
                      Text("msg_ronaldrichards_gmail_com".tr,
                          style: CustomTextStyles.bodyLargeGray600),
                      SizedBox(height: 23.v),
                      _buildProfile(),
                      SizedBox(height: 16.v),
                      _buildNotifications(),
                      SizedBox(height: 16.v),
                      _buildLinkedAccounts(),
                      SizedBox(height: 16.v),
                      _buildSecuritySettings(),
                      SizedBox(height: 16.v),
                      _buildSettings(),
                      SizedBox(height: 16.v),
                      _buildSLogOut()
                    ],),
                  ))
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.v),
                  //   child: CustomImageView(
                  //       imagePath: ImageConstant.imgAvtar1,
                  //       height: 100.adaptSize,
                  //       width: 100.adaptSize),
                  // ),
                  // SizedBox(height: 17.v),
                  // Text("lbl_ronald_richards".tr,
                  //     style: theme.textTheme.titleMedium),
                  // SizedBox(height: 11.v),
                  // Text("msg_ronaldrichards_gmail_com".tr,
                  //     style: CustomTextStyles.bodyLargeGray600),
                  // SizedBox(height: 23.v),
                  // _buildSettings(),
                  // SizedBox(height: 16.v),
                  // _buildNotifications(),
                  // SizedBox(height: 16.v),
                  // _buildLinkedAccounts(),
                  // SizedBox(height: 16.v),
                  // _buildSecuritySettings(),
                  // SizedBox(height: 16.v),
                  // _buildSettings(),
                  // SizedBox(height: 16.v),
                  // _buildSettings()
                ])));
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //       centerTitle: true,
  //       title: AppbarSubtitle(text: "lbl_profile".tr),
  //       styleType: Style.bgOutline);
  // }

  /// Section Widget
  Widget _buildNotifications() {
   return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.notificationScreen);
      },
      child: ProfileOptionsCommon(

        text:  "Notifications".tr,
        image: ImageConstant.alert,),
    );
  }

  /// Section Widget
  Widget _buildLinkedAccounts() {
    return  GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.linkedAccountsScreen);
      },
      child: ProfileOptionsCommon(

        text:  "Linked accounts".tr,
        image: ImageConstant.link,),
    );
  }

  /// Section Widget
  Widget _buildSecuritySettings() {
    return  GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.securitySettingScreen);
      },
      child: ProfileOptionsCommon(

        text:  "Security settings".tr,
        image: ImageConstant.privacy,),
    );
  }
  Widget _buildSettings() {
    return  GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.settingsScreen);
      },
      child: ProfileOptionsCommon(

        text:  "Settings".tr,
        image: ImageConstant.imgIcSetting,),
    );
  }
  Widget _buildSLogOut() {
    return  GestureDetector(
      onTap: () {
        onTapProfile1();
        // Get.toNamed(AppRoutes.settingsScreen);
      },
      child: ProfileOptionsCommon(

        text:  "Log out".tr,
        image: ImageConstant.exit,),
    );
  }

  /// Common widget
  Widget _buildProfile() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.myProfileScreen);
      },
      child: ProfileOptionsCommon(
        text: "Profile".tr,
        image: ImageConstant.person,
      ),
    );
    // return GestureDetector(
    //     onTap: () {
    //       onTapSettings!.call();
    //     },
    //     child: Container(
    //       height: 54.v,
    //         padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v),
    //         decoration: AppDecoration.outlineGray
    //             .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
    //         child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    //           CustomImageView(
    //               imagePath: ImageConstant.imgIcSetting,
    //               height: 22.adaptSize,
    //               width: 22.adaptSize,
    //               margin: EdgeInsets.only(top: 2.v)),
    //           Padding(
    //               padding: EdgeInsets.only(left: 8.h, top: 5.v),
    //               child: Text("lbl_settings".tr,
    //                   style: theme.textTheme.bodyLarge)),
    //           Spacer(),
    //           CustomImageView(
    //               imagePath: ImageConstant.imgArrowRight,
    //               height: 16.adaptSize,
    //               width: 16.adaptSize,
    //               margin: EdgeInsets.symmetric(vertical: 5.v))
    //         ])));
  }

  /// Navigates to the myProfileScreen when the action is triggered.
  onTapProfile() {
    Get.toNamed(
      AppRoutes.myProfileScreen,
    );
  }

  /// Navigates to the notificationEmptyScreen when the action is triggered.
  onTapNotifications() {
    Get.toNamed(
      AppRoutes.notificationEmptyScreen,
    );
  }

  /// Navigates to the linkedAccountsScreen when the action is triggered.
  onTapLinkedAccounts() {
    Get.toNamed(
      AppRoutes.linkedAccountsScreen,
    );
  }

  /// Navigates to the securitySettingScreen when the action is triggered.
  onTapSecuritySettings() {
    Get.toNamed(
      AppRoutes.securitySettingScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapSettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  /// Displays a dialog with the [LogOutDialog] content.
  onTapProfile1() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: LogOutDialog(
        Get.put(
          LogOutController(),
        ),
      ),
    ));
  }
}
