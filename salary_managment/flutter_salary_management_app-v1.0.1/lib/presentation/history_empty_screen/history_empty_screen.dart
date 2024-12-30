import 'controller/history_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/presentation/history_empty_screen_page/history_empty_screen_page.dart';
import 'package:flutter_salary_management_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:flutter_salary_management_app/presentation/profile_page/profile_page.dart';
import 'package:flutter_salary_management_app/presentation/wallet_screen_page/wallet_screen_page.dart';
import 'package:flutter_salary_management_app/widgets/custom_bottom_bar.dart';
import 'package:flutter_salary_management_app/widgets/custom_elevated_button.dart';

class HistoryEmptyScreen extends GetWidget<HistoryEmptyController> {
  const HistoryEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [

                  Spacer(flex: 48),
                  _buildPasswordReset(),
                  Spacer(flex: 51)
                ])),
            ));
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar() {
  //   return CustomAppBar(
  //       centerTitle: true,
  //       title: AppbarSubtitle(text: "lbl_history".tr),
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
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 26.v),
            decoration: AppDecoration.white
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                  height: 120.adaptSize,
                  width: 120.adaptSize,
                  padding: EdgeInsets.all(27.h),
                  decoration: AppDecoration.fillDeepPurple
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder60),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgClock,
                      height: 66.adaptSize,
                      width: 66.adaptSize,
                      alignment: Alignment.center)),
              SizedBox(height: 33.v),
              Text("msg_no_transaction_history".tr,
                  style: CustomTextStyles.headlineSmallBlack90001),
              SizedBox(height: 10.v),
              SizedBox(
                  width: 333.h,
                  child: Text("msg_your_history_is".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeBlack90001
                          .copyWith(height: 1.47))),
              SizedBox(height: 25.v),
              CustomElevatedButton(
                  text: "lbl_go_to_home".tr,
                  margin: EdgeInsets.symmetric(horizontal: 42.h),
                  buttonTextStyle:
                      CustomTextStyles.titleMediumWorkSansWhiteA700)
            ])));
  }

  /// Section Widget
  // Widget _buildBottomBar() {
  //   return CustomBottomBar(onChanged: (BottomBarEnum type) {
  //     Get.toNamed(getCurrentRoute(type), id: 1);
  //   });
  // }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Wallet:
        return AppRoutes.walletScreenPage;
      case BottomBarEnum.History:
        return AppRoutes.historyEmptyScreenPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      case AppRoutes.walletScreenPage:
        return WalletScreenPage();
      case AppRoutes.historyEmptyScreenPage:
        return HistoryEmptyScreenPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the historyTransactionScreenTabContainerScreen when the action is triggered.
  onTapPasswordReset() {
    Get.toNamed(
      AppRoutes.historyTransactionScreenTabContainerScreen,
    );
  }
}
