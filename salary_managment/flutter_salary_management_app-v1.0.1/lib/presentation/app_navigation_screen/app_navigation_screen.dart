import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "01 Log in with defualt".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.logInWithDefualtScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "02 Log in with error".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInWithErrorScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 Log in with Active".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInWithActiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "05 Forgot password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "06 Verification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "06 Verification with error".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationWithErrorScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "07 Reset password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "08 Reset password success".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.resetPasswordSuccessScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "01 Home screen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "02 Recent transaction".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.recentTransactionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "01 Wallet Empty screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.walletEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 Spedning Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.spedningScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Transaction history screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.transactionHistoryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 History Empty screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.historyEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "03 History transaction screen - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .historyTransactionScreenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 History transaction screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.historyTransactionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "05 Transaction history screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.transactionHistory1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "02 My Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Notification empty".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "05 Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "06 Linked accounts".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.linkedAccountsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "07 Security setting".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.securitySettingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "08 Change password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "09 Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "10 Language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "11 Privacy policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "12 Helpline number".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.helplineNumberScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "13 Terms and condition".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.termsAndConditionScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
