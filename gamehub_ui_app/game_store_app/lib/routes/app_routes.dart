import 'package:game_store_app/presentation/main_project.dart';
import 'package:game_store_app/presentation/splash_screen/splash_screen.dart';
import 'package:game_store_app/presentation/splash_screen/binding/splash_binding.dart';

import 'package:game_store_app/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:game_store_app/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:game_store_app/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:game_store_app/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:game_store_app/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:game_store_app/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';

import 'package:game_store_app/presentation/otp_varification_screen/otp_varification_screen.dart';
import 'package:game_store_app/presentation/otp_varification_screen/binding/otp_varification_binding.dart';
import 'package:game_store_app/presentation/otp_varification_fill_screen/otp_varification_fill_screen.dart';
import 'package:game_store_app/presentation/otp_varification_fill_screen/binding/otp_varification_fill_binding.dart';

import 'package:game_store_app/presentation/password_changed_popup_screen/password_changed_popup_screen.dart';
import 'package:game_store_app/presentation/password_changed_popup_screen/binding/password_changed_popup_binding.dart';

import 'package:game_store_app/presentation/write_review_screen/write_review_screen.dart';
import 'package:game_store_app/presentation/write_review_screen/binding/write_review_binding.dart';
import 'package:game_store_app/presentation/thanks_for_rating_screen/thanks_for_rating_screen.dart';
import 'package:game_store_app/presentation/thanks_for_rating_screen/binding/thanks_for_rating_binding.dart';
import 'package:game_store_app/presentation/top_games_screen/top_games_screen.dart';
import 'package:game_store_app/presentation/top_games_screen/binding/top_games_binding.dart';

import 'package:game_store_app/presentation/payment_details_screen/payment_details_screen.dart';
import 'package:game_store_app/presentation/payment_details_screen/binding/payment_details_binding.dart';
import 'package:game_store_app/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:game_store_app/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:game_store_app/presentation/order_successfull_screen/order_successfull_screen.dart';
import 'package:game_store_app/presentation/order_successfull_screen/binding/order_successfull_binding.dart';

import 'package:game_store_app/presentation/vouncher_screen/vouncher_screen.dart';
import 'package:game_store_app/presentation/vouncher_screen/binding/vouncher_binding.dart';
import 'package:game_store_app/presentation/profile_screen/profile_screen.dart';
import 'package:game_store_app/presentation/profile_screen/binding/profile_binding.dart';

import 'package:game_store_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:game_store_app/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:game_store_app/presentation/language_screen/language_screen.dart';
import 'package:game_store_app/presentation/language_screen/binding/language_binding.dart';

import 'package:game_store_app/presentation/your_card_screen/your_card_screen.dart';
import 'package:game_store_app/presentation/your_card_screen/binding/your_card_binding.dart';
import 'package:game_store_app/presentation/rate_us_screen/rate_us_screen.dart';
import 'package:game_store_app/presentation/rate_us_screen/binding/rate_us_binding.dart';

import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String iphone14PlusOneScreen = '/iphone_14_plus_one_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String loginScreen = '/login_screen';

  static const String loginScreenErrorScreen = '/login_screen_error_screen';

  static const String loginScreenFillScreen = '/login_screen_fill_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpVarificationScreen = '/otp_varification_screen';

  static const String otpVarificationFillScreen =
      '/otp_varification_fill_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String passwordChangedPopupScreen =
      '/password_changed_popup_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String exploreGamesScreen = '/explore_games_screen';

  static const String exploreGamesSelectedScreen =
      '/explore_games_selected_screen';

  static const String homeScreenContainerPage = '/home_screen_container_page';

  static const String homeScreenContainer1Screen =
      '/home_screen_container1_screen';

  static const String detailsGameScreen = '/details_game_screen';

  static const String reviewOneScreen = '/review_one_screen';

  static const String reviewScreen = '/review_screen';

  static const String writeReviewScreen = '/write_review_screen';

  static const String thanksForRatingScreen = '/thanks_for_rating_screen';

  static const String topGamesScreen = '/top_games_screen';

  static const String recomendedForYouOneScreen =
      '/recomended_for_you_one_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String recomendedForYouScreen = '/recomended_for_you_screen';

  static const String comingSoonScreen = '/coming_soon_screen';

  static const String downloadScreen = '/download_screen';

  static const String paymentDetailsScreen = '/payment_details_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String orderSuccessfullScreen = '/order_successfull_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String vouncherScreen = '/vouncher_screen';

  static const String couponCodePage = '/coupon_code_page';

  static const String profileScreen = '/profile_screen';

  static const String myProfileScreen = '/my_profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String settingsScreen = '/settings_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String languageScreen = '/language_screen';

  static const String helpAndSupportScreen = '/help_and_support_screen';

  static const String yourCardScreen = '/your_card_screen';

  static const String rateUsScreen = '/rate_us_screen';

  static const String feedBackScreen = '/feed_back_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),

    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => MainProject(),


    ),
    GetPage(
      name: loginScreenErrorScreen,
      page: () => MainProject(),


    ),
    GetPage(
      name: loginScreenFillScreen,
      page: () => MainProject(),

    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => MainProject(),

    ),
    GetPage(
      name: otpVarificationScreen,
      page: () => OtpVarificationScreen(),
      bindings: [
        OtpVarificationBinding(),
      ],
    ),
    GetPage(
      name: otpVarificationFillScreen,
      page: () => OtpVarificationFillScreen(),
      bindings: [
        OtpVarificationFillBinding(),
      ],
    ),

    GetPage(
      name: passwordChangedPopupScreen,
      page: () => PasswordChangedPopupScreen(),
      bindings: [
        PasswordChangedPopupBinding(),
      ],
    ),




    GetPage(
      name: writeReviewScreen,
      page: () => WriteReviewScreen(),
      bindings: [
        WriteReviewBinding(),
      ],
    ),
    GetPage(
      name: thanksForRatingScreen,
      page: () => ThanksForRatingScreen(),
      bindings: [
        ThanksForRatingBinding(),
      ],
    ),
    GetPage(
      name: topGamesScreen,
      page: () => TopGamesScreen(),
      bindings: [
        TopGamesBinding(),
      ],
    ),

    GetPage(
      name: paymentDetailsScreen,
      page: () => PaymentDetailsScreen(),
      bindings: [
        PaymentDetailsBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: orderSuccessfullScreen,
      page: () => OrderSuccessfullScreen(),
      bindings: [
        OrderSuccessfullBinding(),
      ],
    ),
    GetPage(
      name: addNewCardScreen,
      page: () => MainProject(),

    ),
    GetPage(
      name: vouncherScreen,
      page: () => VouncherScreen(),
      bindings: [
        VouncherBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: myProfileScreen,
      page: () => MainProject(),

    ),
    GetPage(
      name: editProfileScreen,
      page: () => MainProject(),

    ),

    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: languageScreen,
      page: () => LanguageScreen(),
      bindings: [
        LanguageBinding(),
      ],
    ),

    GetPage(
      name: yourCardScreen,
      page: () => YourCardScreen(),
      bindings: [
        YourCardBinding(),
      ],
    ),
    GetPage(
      name: rateUsScreen,
      page: () => RateUsScreen(),
      bindings: [
        RateUsBinding(),
      ],
    ),


    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
