
import 'package:flutter_salary_management_app/presentation/splash_screen/splash_screen.dart';
import 'package:flutter_salary_management_app/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:flutter_salary_management_app/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';

import 'package:flutter_salary_management_app/presentation/log_in_with_defualt_screen/log_in_with_defualt_screen.dart';
import 'package:flutter_salary_management_app/presentation/log_in_with_defualt_screen/binding/log_in_with_defualt_binding.dart';
import 'package:flutter_salary_management_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:flutter_salary_management_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:flutter_salary_management_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:flutter_salary_management_app/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:flutter_salary_management_app/presentation/verification_screen/verification_screen.dart';
import 'package:flutter_salary_management_app/presentation/verification_screen/binding/verification_binding.dart';
import 'package:flutter_salary_management_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:flutter_salary_management_app/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:flutter_salary_management_app/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:flutter_salary_management_app/presentation/reset_password_success_screen/binding/reset_password_success_binding.dart';
import 'package:flutter_salary_management_app/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:flutter_salary_management_app/presentation/home_screen_container_screen/binding/home_screen_container_binding.dart';
import 'package:flutter_salary_management_app/presentation/recent_transaction_screen/recent_transaction_screen.dart';
import 'package:flutter_salary_management_app/presentation/recent_transaction_screen/binding/recent_transaction_binding.dart';
import 'package:flutter_salary_management_app/presentation/wallet_empty_screen/wallet_empty_screen.dart';
import 'package:flutter_salary_management_app/presentation/wallet_empty_screen/binding/wallet_empty_binding.dart';
import 'package:flutter_salary_management_app/presentation/spedning_screen/spedning_screen.dart';
import 'package:flutter_salary_management_app/presentation/spedning_screen/binding/spedning_binding.dart';
import 'package:flutter_salary_management_app/presentation/transaction_history_screen/transaction_history_screen.dart';
import 'package:flutter_salary_management_app/presentation/transaction_history_screen/binding/transaction_history_binding.dart';
import 'package:flutter_salary_management_app/presentation/history_empty_screen/history_empty_screen.dart';
import 'package:flutter_salary_management_app/presentation/history_empty_screen/binding/history_empty_binding.dart';
import 'package:flutter_salary_management_app/presentation/history_transaction_screen_tab_container_screen/history_transaction_screen_tab_container_screen.dart';
import 'package:flutter_salary_management_app/presentation/history_transaction_screen_tab_container_screen/binding/history_transaction_screen_tab_container_binding.dart';
import 'package:flutter_salary_management_app/presentation/history_transaction_screen/history_transaction_screen.dart';
import 'package:flutter_salary_management_app/presentation/history_transaction_screen/binding/history_transaction_binding.dart';
import 'package:flutter_salary_management_app/presentation/transaction_history1_screen/transaction_history1_screen.dart';
import 'package:flutter_salary_management_app/presentation/transaction_history1_screen/binding/transaction_history1_binding.dart';
import 'package:flutter_salary_management_app/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:flutter_salary_management_app/presentation/my_profile_screen/binding/my_profile_binding.dart';
import 'package:flutter_salary_management_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:flutter_salary_management_app/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:flutter_salary_management_app/presentation/notification_empty_screen/notification_empty_screen.dart';
import 'package:flutter_salary_management_app/presentation/notification_empty_screen/binding/notification_empty_binding.dart';
import 'package:flutter_salary_management_app/presentation/notification_screen/notification_screen.dart';
import 'package:flutter_salary_management_app/presentation/notification_screen/binding/notification_binding.dart';
import 'package:flutter_salary_management_app/presentation/linked_accounts_screen/linked_accounts_screen.dart';
import 'package:flutter_salary_management_app/presentation/linked_accounts_screen/binding/linked_accounts_binding.dart';
import 'package:flutter_salary_management_app/presentation/security_setting_screen/security_setting_screen.dart';
import 'package:flutter_salary_management_app/presentation/security_setting_screen/binding/security_setting_binding.dart';
import 'package:flutter_salary_management_app/presentation/change_password_screen/change_password_screen.dart';
import 'package:flutter_salary_management_app/presentation/change_password_screen/binding/change_password_binding.dart';
import 'package:flutter_salary_management_app/presentation/settings_screen/settings_screen.dart';
import 'package:flutter_salary_management_app/presentation/settings_screen/binding/settings_binding.dart';
import 'package:flutter_salary_management_app/presentation/language_screen/language_screen.dart';
import 'package:flutter_salary_management_app/presentation/language_screen/binding/language_binding.dart';
import 'package:flutter_salary_management_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:flutter_salary_management_app/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:flutter_salary_management_app/presentation/helpline_number_screen/helpline_number_screen.dart';
import 'package:flutter_salary_management_app/presentation/helpline_number_screen/binding/helpline_number_binding.dart';
import 'package:flutter_salary_management_app/presentation/terms_and_condition_screen/terms_and_condition_screen.dart';
import 'package:flutter_salary_management_app/presentation/terms_and_condition_screen/binding/terms_and_condition_binding.dart';
import 'package:flutter_salary_management_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:flutter_salary_management_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/splash_screen/binding/splash_binding.dart';

class AppRoutes {
  static const String splashOneScreen = '/splash_one_screen';

  static const String splashTwoScreen = '/splash_two_screen';

  static const String splashScreen = '/splash_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String logInWithDefualtScreen = '/log_in_with_defualt_screen';

  static const String logInWithErrorScreen = '/log_in_with_error_screen';

  static const String logInWithActiveScreen = '/log_in_with_active_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String verificationWithErrorScreen =
      '/verification_with_error_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordSuccessScreen =
      '/reset_password_success_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String recentTransactionScreen = '/recent_transaction_screen';

  static const String walletEmptyScreen = '/wallet_empty_screen';

  static const String walletScreenPage = '/wallet_screen_page';

  static const String spedningScreen = '/spedning_screen';

  static const String transactionHistoryScreen = '/transaction_history_screen';

  static const String historyEmptyScreenPage = '/history_empty_screen_page';

  static const String historyPaymentScreenPage = '/history_payment_screen_page';

  static const String historyEmptyScreen = '/history_empty_screen';

  static const String historyTransactionScreenPage =
      '/history_transaction_screen_page';

  static const String historyTransactionScreenTabContainerScreen =
      '/history_transaction_screen_tab_container_screen';

  static const String historyTransactionScreen = '/history_transaction_screen';

  static const String transactionHistory1Screen =
      '/transaction_history1_screen';

  static const String profilePage = '/profile_page';

  static const String myProfileScreen = '/my_profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationEmptyScreen = '/notification_empty_screen';

  static const String notificationScreen = '/notification_screen';

  static const String linkedAccountsScreen = '/linked_accounts_screen';

  static const String securitySettingScreen = '/security_setting_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String settingsScreen = '/settings_screen';

  static const String languageScreen = '/language_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String helplineNumberScreen = '/helpline_number_screen';

  static const String termsAndConditionScreen = '/terms_and_condition_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    // GetPage(
    //   name: splashOneScreen,
    //   page: () => SplashOneScreen(),
    //   bindings: [
    //     SplashOneBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: splashTwoScreen,
    //   page: () => SplashScreen(),
    //   bindings: [
    //     SplashTwoBinding(),
    //   ],
    // ),
    GetPage(
      transition: Transition.rightToLeft,
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    // GetPage(
    //   name: onboardingTwoScreen,
    //   page: () => OnboardingTwoScreen(),
    //   bindings: [
    //     OnboardingTwoBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: onboardingThreeScreen,
    //   page: () => OnboardingThreeScreen(),
    //   bindings: [
    //     OnboardingThreeBinding(),
    //   ],
    // ),
    GetPage(
      transition: Transition.rightToLeft,
      name: logInWithDefualtScreen,
      page: () => LogInWithDefualtScreen(),
      bindings: [
        LogInWithDefualtBinding(),
      ],
    ),
    // GetPage(
    //   name: logInWithErrorScreen,
    //   page: () => LogInWithErrorScreen(),
    //   bindings: [
    //     LogInWithErrorBinding(),
    //   ],
    // ),
    // GetPage(
    //   name: logInWithActiveScreen,
    //   page: () => LogInWithActiveScreen(),
    //   bindings: [
    //     LogInWithActiveBinding(),
    //   ],
    // ),
    GetPage(
      transition: Transition.rightToLeft,
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
      ],
    ),
    // GetPage(
    //   name: verificationWithErrorScreen,
    //   page: () => VerificationWithErrorScreen(),
    //   bindings: [
    //     VerificationWithErrorBinding(),
    //   ],
    // ),
    GetPage(
      transition: Transition.rightToLeft,
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: resetPasswordSuccessScreen,
      page: () => ResetPasswordSuccessScreen(),
      bindings: [
        ResetPasswordSuccessBinding(),
      ],
    ),
    GetPage(
      name: homeScreenContainerScreen,
      page: () => HomeScreenContainerScreen(),
      bindings: [
        HomeScreenContainerBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: recentTransactionScreen,
      page: () => RecentTransactionScreen(),
      bindings: [
        RecentTransactionBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: walletEmptyScreen,
      page: () => WalletEmptyScreen(),
      bindings: [
        WalletEmptyBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: spedningScreen,
      page: () => SpedningScreen(),
      bindings: [
        SpedningBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: transactionHistoryScreen,
      page: () => TransactionHistoryScreen(),
      bindings: [
        TransactionHistoryBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: historyEmptyScreen,
      page: () => HistoryEmptyScreen(),
      bindings: [
        HistoryEmptyBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: historyTransactionScreenTabContainerScreen,
      page: () => HistoryTransactionScreenTabContainerScreen(),
      bindings: [
        HistoryTransactionScreenTabContainerBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: historyTransactionScreen,
      page: () => HistoryTransactionScreen(),
      bindings: [
        HistoryTransactionBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: transactionHistory1Screen,
      page: () => TransactionHistory1Screen(),
      bindings: [
        TransactionHistory1Binding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: myProfileScreen,
      page: () => MyProfileScreen(),
      bindings: [
        MyProfileBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: notificationEmptyScreen,
      page: () => NotificationEmptyScreen(),
      bindings: [
        NotificationEmptyBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: linkedAccountsScreen,
      page: () => LinkedAccountsScreen(),
      bindings: [
        LinkedAccountsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: securitySettingScreen,
      page: () => SecuritySettingScreen(),
      bindings: [
        SecuritySettingBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
      bindings: [
        ChangePasswordBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: languageScreen,
      page: () => LanguageScreen(),
      bindings: [
        LanguageBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: helplineNumberScreen,
      page: () => HelplineNumberScreen(),
      bindings: [
        HelplineNumberBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: termsAndConditionScreen,
      page: () => TermsAndConditionScreen(),
      bindings: [
        TermsAndConditionBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
//import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
// @override
//     Widget build(BuildContext context) {
//         final List<SalesData> chartData = [
//             SalesData(2010, 35),
//             SalesData(2011, 28),
//             SalesData(2012, 34),
//             SalesData(2013, 32),
//             SalesData(2014, 40)
//         ];
//
//         return Scaffold(
//             body: Center(
//                 child: Container(
//                     child: SfCartesianChart(
//                         primaryXAxis: DateTimeAxis(),
//                         series: <CartesianSeries>[
//                             // Renders line chart
//                             LineSeries<SalesData, DateTime>(
//                                 dataSource: chartData,
//                                 xValueMapper: (SalesData sales, _) => sales.year,
//                                 yValueMapper: (SalesData sales, _) => sales.sales
//                             )
//                         ]
//                     )
//                 )
//             )
//         );
//     }
//
//     class SalesData {
//         SalesData(this.year, this.sales);
//         final DateTime year;
//         final double sales;
//     }