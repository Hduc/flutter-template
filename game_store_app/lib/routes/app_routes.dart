import 'package:game_store_app/presentation/splash_screen/splash_screen.dart';
import 'package:game_store_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:game_store_app/presentation/iphone_14_plus_one_screen/iphone_14_plus_one_screen.dart';
import 'package:game_store_app/presentation/iphone_14_plus_one_screen/binding/iphone_14_plus_one_binding.dart';
import 'package:game_store_app/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:game_store_app/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:game_store_app/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:game_store_app/presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import 'package:game_store_app/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:game_store_app/presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import 'package:game_store_app/presentation/login_screen/login_screen.dart';
import 'package:game_store_app/presentation/login_screen/binding/login_binding.dart';
import 'package:game_store_app/presentation/login_screen_error_screen/login_screen_error_screen.dart';
import 'package:game_store_app/presentation/login_screen_error_screen/binding/login_screen_error_binding.dart';
import 'package:game_store_app/presentation/login_screen_fill_screen/login_screen_fill_screen.dart';
import 'package:game_store_app/presentation/login_screen_fill_screen/binding/login_screen_fill_binding.dart';
import 'package:game_store_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:game_store_app/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:game_store_app/presentation/otp_varification_screen/otp_varification_screen.dart';
import 'package:game_store_app/presentation/otp_varification_screen/binding/otp_varification_binding.dart';
import 'package:game_store_app/presentation/otp_varification_fill_screen/otp_varification_fill_screen.dart';
import 'package:game_store_app/presentation/otp_varification_fill_screen/binding/otp_varification_fill_binding.dart';
import 'package:game_store_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:game_store_app/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:game_store_app/presentation/password_changed_popup_screen/password_changed_popup_screen.dart';
import 'package:game_store_app/presentation/password_changed_popup_screen/binding/password_changed_popup_binding.dart';
import 'package:game_store_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:game_store_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:game_store_app/presentation/explore_games_screen/explore_games_screen.dart';
import 'package:game_store_app/presentation/explore_games_screen/binding/explore_games_binding.dart';
import 'package:game_store_app/presentation/explore_games_selected_screen/explore_games_selected_screen.dart';
import 'package:game_store_app/presentation/explore_games_selected_screen/binding/explore_games_selected_binding.dart';
import 'package:game_store_app/presentation/home_screen_container1_screen/home_screen_container1_screen.dart';
import 'package:game_store_app/presentation/home_screen_container1_screen/binding/home_screen_container1_binding.dart';
import 'package:game_store_app/presentation/details_game_screen/details_game_screen.dart';
import 'package:game_store_app/presentation/details_game_screen/binding/details_game_binding.dart';
import 'package:game_store_app/presentation/review_one_screen/review_one_screen.dart';
import 'package:game_store_app/presentation/review_one_screen/binding/review_one_binding.dart';
import 'package:game_store_app/presentation/review_screen/review_screen.dart';
import 'package:game_store_app/presentation/review_screen/binding/review_binding.dart';
import 'package:game_store_app/presentation/write_review_screen/write_review_screen.dart';
import 'package:game_store_app/presentation/write_review_screen/binding/write_review_binding.dart';
import 'package:game_store_app/presentation/thanks_for_rating_screen/thanks_for_rating_screen.dart';
import 'package:game_store_app/presentation/thanks_for_rating_screen/binding/thanks_for_rating_binding.dart';
import 'package:game_store_app/presentation/top_games_screen/top_games_screen.dart';
import 'package:game_store_app/presentation/top_games_screen/binding/top_games_binding.dart';
import 'package:game_store_app/presentation/recomended_for_you_one_screen/recomended_for_you_one_screen.dart';
import 'package:game_store_app/presentation/recomended_for_you_one_screen/binding/recomended_for_you_one_binding.dart';
import 'package:game_store_app/presentation/categories_screen/categories_screen.dart';
import 'package:game_store_app/presentation/categories_screen/binding/categories_binding.dart';
import 'package:game_store_app/presentation/recomended_for_you_screen/recomended_for_you_screen.dart';
import 'package:game_store_app/presentation/recomended_for_you_screen/binding/recomended_for_you_binding.dart';
import 'package:game_store_app/presentation/coming_soon_screen/coming_soon_screen.dart';
import 'package:game_store_app/presentation/coming_soon_screen/binding/coming_soon_binding.dart';
import 'package:game_store_app/presentation/download_screen/download_screen.dart';
import 'package:game_store_app/presentation/download_screen/binding/download_binding.dart';
import 'package:game_store_app/presentation/payment_details_screen/payment_details_screen.dart';
import 'package:game_store_app/presentation/payment_details_screen/binding/payment_details_binding.dart';
import 'package:game_store_app/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:game_store_app/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:game_store_app/presentation/order_successfull_screen/order_successfull_screen.dart';
import 'package:game_store_app/presentation/order_successfull_screen/binding/order_successfull_binding.dart';
import 'package:game_store_app/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:game_store_app/presentation/add_new_card_screen/binding/add_new_card_binding.dart';
import 'package:game_store_app/presentation/vouncher_screen/vouncher_screen.dart';
import 'package:game_store_app/presentation/vouncher_screen/binding/vouncher_binding.dart';
import 'package:game_store_app/presentation/profile_screen/profile_screen.dart';
import 'package:game_store_app/presentation/profile_screen/binding/profile_binding.dart';
import 'package:game_store_app/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:game_store_app/presentation/my_profile_screen/binding/my_profile_binding.dart';
import 'package:game_store_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:game_store_app/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:game_store_app/presentation/settings_screen/settings_screen.dart';
import 'package:game_store_app/presentation/settings_screen/binding/settings_binding.dart';
import 'package:game_store_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:game_store_app/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:game_store_app/presentation/language_screen/language_screen.dart';
import 'package:game_store_app/presentation/language_screen/binding/language_binding.dart';
import 'package:game_store_app/presentation/help_and_support_screen/help_and_support_screen.dart';
import 'package:game_store_app/presentation/help_and_support_screen/binding/help_and_support_binding.dart';
import 'package:game_store_app/presentation/your_card_screen/your_card_screen.dart';
import 'package:game_store_app/presentation/your_card_screen/binding/your_card_binding.dart';
import 'package:game_store_app/presentation/rate_us_screen/rate_us_screen.dart';
import 'package:game_store_app/presentation/rate_us_screen/binding/rate_us_binding.dart';
import 'package:game_store_app/presentation/feed_back_screen/feed_back_screen.dart';
import 'package:game_store_app/presentation/feed_back_screen/binding/feed_back_binding.dart';
import 'package:game_store_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:game_store_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
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
      name: iphone14PlusOneScreen,
      page: () => Iphone14PlusOneScreen(),
      bindings: [
        Iphone14PlusOneBinding(),
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
      page: () => LoginSCreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: loginScreenErrorScreen,
      page: () => LoginScreenErrorScreen(),
      bindings: [
        LoginScreenErrorBinding(),
      ],
    ),
    GetPage(
      name: loginScreenFillScreen,
      page: () => LoginScreenFillScreen(),
      bindings: [
        LoginScreenFillBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
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
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
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
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: exploreGamesScreen,
      page: () => ExploreGamesScreen(),
      bindings: [
        ExploreGamesBinding(),
      ],
    ),
    GetPage(
      name: exploreGamesSelectedScreen,
      page: () => ExploreGamesSelectedScreen(),
      bindings: [
        ExploreGamesSelectedBinding(),
      ],
    ),
    GetPage(
      name: homeScreenContainer1Screen,
      page: () => HomeScreenContainer1Screen(),
      bindings: [
        HomeScreenContainer1Binding(),
      ],
    ),
    GetPage(
      name: detailsGameScreen,
      page: () => DetailsGameScreen(),
      bindings: [
        DetailsGameBinding(),
      ],
    ),
    GetPage(
      name: reviewOneScreen,
      page: () => ReviewOneScreen(),
      bindings: [
        ReviewOneBinding(),
      ],
    ),
    GetPage(
      name: reviewScreen,
      page: () => ReviewScreen(),
      bindings: [
        ReviewBinding(),
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
      name: recomendedForYouOneScreen,
      page: () => RecomendedForYouOneScreen(),
      bindings: [
        RecomendedForYouOneBinding(),
      ],
    ),
    GetPage(
      name: categoriesScreen,
      page: () => CategoriesScreen(),
      bindings: [
        CategoriesBinding(),
      ],
    ),
    GetPage(
      name: recomendedForYouScreen,
      page: () => RecomendedForYouScreen(),
      bindings: [
        RecomendedForYouBinding(),
      ],
    ),
    GetPage(
      name: comingSoonScreen,
      page: () => ComingSoonScreen(),
      bindings: [
        ComingSoonBinding(),
      ],
    ),
    GetPage(
      name: downloadScreen,
      page: () => DownloadScreen(),
      bindings: [
        DownloadBinding(),
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
      page: () => AddNewCardScreen(),
      bindings: [
        AddNewCardBinding(),
      ],
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
      page: () => MyProfileScreen(),
      bindings: [
        MyProfileBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
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
      name: helpAndSupportScreen,
      page: () => HelpAndSupportScreen(),
      bindings: [
        HelpAndSupportBinding(),
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
      name: feedBackScreen,
      page: () => FeedBackScreen(),
      bindings: [
        FeedBackBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
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
