
import 'package:dating_app/main_project.dart';


import 'package:dating_app/presentation/splash_two_screen/splash_two_screen.dart';
import 'package:dating_app/presentation/splash_two_screen/binding/splash_two_binding.dart';
import 'package:dating_app/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:dating_app/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:dating_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:dating_app/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:dating_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:dating_app/presentation/sign_up_screen/binding/sign_up_binding.dart';

import 'package:dating_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:dating_app/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:dating_app/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:dating_app/presentation/reset_password_success_screen/binding/reset_password_success_binding.dart';

import 'package:dating_app/presentation/orientation_screen/orientation_screen.dart';
import 'package:dating_app/presentation/orientation_screen/binding/orientation_binding.dart';
import 'package:dating_app/presentation/interested_screen/interested_screen.dart';
import 'package:dating_app/presentation/interested_screen/binding/interested_binding.dart';

import 'package:dating_app/presentation/intro_screen/intro_screen.dart';
import 'package:dating_app/presentation/intro_screen/binding/intro_binding.dart';

import 'package:dating_app/presentation/profile_created_success_screen/profile_created_success_screen.dart';
import 'package:dating_app/presentation/profile_created_success_screen/binding/profile_created_success_binding.dart';
import 'package:dating_app/presentation/location_access_container1_screen/location_access_container1_screen.dart';
import 'package:dating_app/presentation/location_access_container1_screen/binding/location_access_container1_binding.dart';

import 'package:dating_app/presentation/near_by_you_tab_container_screen/near_by_you_tab_container_screen.dart';
import 'package:dating_app/presentation/near_by_you_tab_container_screen/binding/near_by_you_tab_container_binding.dart';

import 'package:dating_app/presentation/intrest_screen/intrest_screen.dart';
import 'package:dating_app/presentation/intrest_screen/binding/intrest_binding.dart';

import 'package:dating_app/presentation/match_success_screen/match_success_screen.dart';
import 'package:dating_app/presentation/match_success_screen/binding/match_success_binding.dart';
import 'package:dating_app/presentation/search_screen/search_screen.dart';
import 'package:dating_app/presentation/search_screen/binding/search_binding.dart';
import 'package:dating_app/presentation/search_result_screen/search_result_screen.dart';
import 'package:dating_app/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:dating_app/presentation/likes_screen/likes_screen.dart';
import 'package:dating_app/presentation/likes_screen/binding/likes_binding.dart';

import 'package:dating_app/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:dating_app/presentation/my_profile_screen/binding/my_profile_binding.dart';

// import 'package:dating_app/presentation/empty_notification_screen/empty_notification_screen.dart';
// import 'package:dating_app/presentation/empty_notification_screen/binding/empty_notification_binding.dart';
import 'package:dating_app/presentation/notification_screen/notification_screen.dart';
import 'package:dating_app/presentation/notification_screen/binding/notification_binding.dart';
import 'package:dating_app/presentation/my_address_screen/my_address_screen.dart';
import 'package:dating_app/presentation/my_address_screen/binding/my_address_binding.dart';

import 'package:dating_app/presentation/subscription_screen/subscription_screen.dart';
import 'package:dating_app/presentation/subscription_screen/binding/subscription_binding.dart';
import 'package:dating_app/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:dating_app/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:dating_app/presentation/review_summary_screen/review_summary_screen.dart';
import 'package:dating_app/presentation/review_summary_screen/binding/review_summary_binding.dart';
import 'package:dating_app/presentation/help_screen/help_screen.dart';
import 'package:dating_app/presentation/help_screen/binding/help_binding.dart';

import 'package:dating_app/presentation/logout_screen/logout_screen.dart';
import 'package:dating_app/presentation/logout_screen/binding/logout_binding.dart';

import 'package:get/get.dart';

class AppRoutes {
  static const String splashTwoScreen = '/splash_two_screen';

  static const String splashScreen = '/splash_screen';

  static const String splashOneScreen = '/splash_one_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String logInScreen = '/log_in_screen';

  static const String logInWithErrorScreen = '/log_in_with_error_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationScreen = '/verification_screen';

  static const String verificationOneScreen = '/verification_one_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordSuccessScreen =
      '/reset_password_success_screen';

  static const String genderScreen = '/gender_screen';

  static const String orientationScreen = '/orientation_screen';

  static const String interestedScreen = '/interested_screen';

  static const String compatibilityScreen = '/compatibility_screen';

  static const String introScreen = '/intro_screen';

  static const String addPicsScreen = '/add_pics_screen';

  static const String addPicsOneScreen = '/add_pics_one_screen';

  static const String descriptionScreen = '/description_screen';

  static const String profileCreatedSuccessScreen =
      '/profile_created_success_screen';

  static const String locationAccessContainerPage =
      '/location_access_container_page';

  static const String locationAccessContainer1Screen =
      '/location_access_container1_screen';

  static const String addManuallyAddressScreen = '/add_manually_address_screen';

  static const String bottomBar = '/BottomBar';
  static const String homePage = '/home_page';

  static const String nearByYouPage = '/near_by_you_page';

  static const String nearByYouTabContainerScreen =
      '/near_by_you_tab_container_screen';

  static const String filterScreen = '/filter_screen';

  static const String intrestScreen = '/intrest_screen';

  static const String detailsScreen = '/details_screen';

  static const String matchSuccessScreen = '/match_success_screen';

  static const String searchScreen = '/search_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String likesScreen = '/likes_screen';

  static const String likesListPage = '/likes_list_page';

  static const String chatsScreen = '/chats_screen';

  static const String chatsTwoPage = '/chats_two_page';

  static const String chatsOneScreen = '/chats_one_screen';

  static const String chatsWithKeyboardScreen = '/chats_with_keyboard_screen';

  static const String chatsWithSendScreen = '/chats_with_send_screen';

  static const String chatsWithImageScreen = '/chats_with_image_screen';

  static const String callScreen = '/call_screen';

  static const String profilePage = '/profile_page';

  static const String myProfileScreen = '/my_profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String emptyNotificationScreen = '/empty_notification_screen';

  static const String notificationScreen = '/notification_screen';

  static const String myAddressScreen = '/my_address_screen';

  static const String addressEditScreen = '/address_edit_screen';

  static const String deleteAddressScreen = '/delete_address_screen';

  static const String editAddressScreen = '/edit_address_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String subscriptionScreen = '/subscription_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String reviewSummaryScreen = '/review_summary_screen';

  static const String helpScreen = '/help_screen';

  static const String termsAndConditionsScreen = '/terms_and_conditions_screen';

  static const String logoutScreen = '/logout_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashTwoScreen,
      page: () => SplashTwoScreen(),
      bindings: [
        SplashTwoBinding(),
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
      name: logInScreen,
      page: () => MainProject(),
      bindings: [
        LogInBinding(),
      ],
    ),

    GetPage(
      name: signUpScreen,
      page: () => MainProject(),
      bindings: [
        SignUpBinding(),
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
      name: resetPasswordSuccessScreen,
      page: () => ResetPasswordSuccessScreen(),
      bindings: [
        ResetPasswordSuccessBinding(),
      ],
    ),

    GetPage(
      name: orientationScreen,
      page: () => OrientationScreen(),
      bindings: [
        OrientationBinding(),
      ],
    ),
    GetPage(
      name: interestedScreen,
      page: () => MainProject(),
      bindings: [
        InterestedBinding(),
      ],
    ),

    GetPage(
      name: introScreen,
      page: () => IntroScreen(),
      bindings: [
        IntroBinding(),
      ],
    ),

    GetPage(
      name: profileCreatedSuccessScreen,
      page: () => ProfileCreatedSuccessScreen(),
      bindings: [
        ProfileCreatedSuccessBinding(),
      ],
    ),
    GetPage(
      name: locationAccessContainer1Screen,
      page: () => LocationAccessContainer1Screen(),
      bindings: [
        LocationAccessContainer1Binding(),
      ],
    ),

    GetPage(
      name: nearByYouTabContainerScreen,
      page: () => NearByYouTabContainerScreen(),
      bindings: [
        NearByYouTabContainerBinding(),
      ],
    ),

    GetPage(
      name: intrestScreen,
      page: () => IntrestScreen(),
      bindings: [
        IntrestBinding(),
      ],
    ),

    GetPage(
      name: matchSuccessScreen,
      page: () => MatchSuccessScreen(),
      bindings: [
        MatchSuccessBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultScreen,
      page: () => SearchResultScreen(),
      bindings: [
        SearchResultBinding(),
      ],
    ),
    GetPage(
      name: likesScreen,
      page: () => LikesScreen(),
      bindings: [
        LikesBinding(),
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
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: myAddressScreen,
      page: () => MyAddressScreen(),
      bindings: [
        MyAddressBinding(),
      ],
    ),


    GetPage(
      name: subscriptionScreen,
      page: () => SubscriptionScreen(),
      bindings: [
        SubscriptionBinding(),
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
      name: reviewSummaryScreen,
      page: () => ReviewSummaryScreen(),
      bindings: [
        ReviewSummaryBinding(),
      ],
    ),
    GetPage(
      name: helpScreen,
      page: () => HelpScreen(),
      bindings: [
        HelpBinding(),
      ],
    ),

    GetPage(
      name: logoutScreen,
      page: () => LogoutScreen(),
      bindings: [
        LogoutBinding(),
      ],
    ),

    GetPage(
      name: initialRoute,
      page: () => SplashTwoScreen(),
      bindings: [
        SplashTwoBinding(),
      ],
    )
  ];
}
