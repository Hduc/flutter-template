
import 'package:dating_app/presentation/details_screen/details_screen.dart';

import 'package:dating_app/presentation/splash_two_screen/splash_two_screen.dart';
import 'package:dating_app/presentation/splash_two_screen/binding/splash_two_binding.dart';
import 'package:dating_app/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:dating_app/presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import 'package:dating_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:dating_app/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:dating_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:dating_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:dating_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:dating_app/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:dating_app/presentation/verification_screen/verification_screen.dart';
import 'package:dating_app/presentation/verification_screen/binding/verification_binding.dart';
import 'package:dating_app/presentation/verification_one_screen/verification_one_screen.dart';
import 'package:dating_app/presentation/verification_one_screen/binding/verification_one_binding.dart';
import 'package:dating_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:dating_app/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:dating_app/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:dating_app/presentation/reset_password_success_screen/binding/reset_password_success_binding.dart';
import 'package:dating_app/presentation/gender_screen/gender_screen.dart';
import 'package:dating_app/presentation/gender_screen/binding/gender_binding.dart';
import 'package:dating_app/presentation/orientation_screen/orientation_screen.dart';
import 'package:dating_app/presentation/orientation_screen/binding/orientation_binding.dart';
import 'package:dating_app/presentation/interested_screen/interested_screen.dart';
import 'package:dating_app/presentation/interested_screen/binding/interested_binding.dart';
import 'package:dating_app/presentation/compatibility_screen/compatibility_screen.dart';
import 'package:dating_app/presentation/compatibility_screen/binding/compatibility_binding.dart';
import 'package:dating_app/presentation/intro_screen/intro_screen.dart';
import 'package:dating_app/presentation/intro_screen/binding/intro_binding.dart';
import 'package:dating_app/presentation/add_pics_screen/add_pics_screen.dart';
import 'package:dating_app/presentation/add_pics_screen/binding/add_pics_binding.dart';
import 'package:dating_app/presentation/add_pics_one_screen/add_pics_one_screen.dart';
import 'package:dating_app/presentation/add_pics_one_screen/binding/add_pics_one_binding.dart';
import 'package:dating_app/presentation/description_screen/description_screen.dart';
import 'package:dating_app/presentation/description_screen/binding/description_binding.dart';
import 'package:dating_app/presentation/profile_created_success_screen/profile_created_success_screen.dart';
import 'package:dating_app/presentation/profile_created_success_screen/binding/profile_created_success_binding.dart';
import 'package:dating_app/presentation/location_access_container1_screen/location_access_container1_screen.dart';
import 'package:dating_app/presentation/location_access_container1_screen/binding/location_access_container1_binding.dart';
import 'package:dating_app/presentation/add_manually_address_screen/add_manually_address_screen.dart';
import 'package:dating_app/presentation/add_manually_address_screen/binding/add_manually_address_binding.dart';
import 'package:dating_app/presentation/near_by_you_tab_container_screen/near_by_you_tab_container_screen.dart';
import 'package:dating_app/presentation/near_by_you_tab_container_screen/binding/near_by_you_tab_container_binding.dart';
import 'package:dating_app/presentation/filter_screen/filter_screen.dart';
import 'package:dating_app/presentation/filter_screen/binding/filter_binding.dart';
import 'package:dating_app/presentation/intrest_screen/intrest_screen.dart';
import 'package:dating_app/presentation/intrest_screen/binding/intrest_binding.dart';
import 'package:dating_app/presentation/details_screen/binding/details_binding.dart';
import 'package:dating_app/presentation/match_success_screen/match_success_screen.dart';
import 'package:dating_app/presentation/match_success_screen/binding/match_success_binding.dart';
import 'package:dating_app/presentation/search_screen/search_screen.dart';
import 'package:dating_app/presentation/search_screen/binding/search_binding.dart';
import 'package:dating_app/presentation/search_result_screen/search_result_screen.dart';
import 'package:dating_app/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:dating_app/presentation/likes_screen/likes_screen.dart';
import 'package:dating_app/presentation/likes_screen/binding/likes_binding.dart';
import 'package:dating_app/presentation/chats_with_send_screen/chats_with_send_screen.dart';
import 'package:dating_app/presentation/chats_with_send_screen/binding/chats_with_send_binding.dart';
import 'package:dating_app/presentation/call_screen/call_screen.dart';
import 'package:dating_app/presentation/call_screen/binding/call_binding.dart';
import 'package:dating_app/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:dating_app/presentation/my_profile_screen/binding/my_profile_binding.dart';
import 'package:dating_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:dating_app/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
// import 'package:dating_app/presentation/empty_notification_screen/empty_notification_screen.dart';
// import 'package:dating_app/presentation/empty_notification_screen/binding/empty_notification_binding.dart';
import 'package:dating_app/presentation/notification_screen/notification_screen.dart';
import 'package:dating_app/presentation/notification_screen/binding/notification_binding.dart';
import 'package:dating_app/presentation/my_address_screen/my_address_screen.dart';
import 'package:dating_app/presentation/my_address_screen/binding/my_address_binding.dart';
import 'package:dating_app/presentation/address_edit_screen/address_edit_screen.dart';
import 'package:dating_app/presentation/address_edit_screen/binding/address_edit_binding.dart';
import 'package:dating_app/presentation/delete_address_screen/delete_address_screen.dart';
import 'package:dating_app/presentation/delete_address_screen/binding/delete_address_binding.dart';
import 'package:dating_app/presentation/edit_address_screen/edit_address_screen.dart';
import 'package:dating_app/presentation/edit_address_screen/binding/edit_address_binding.dart';
import 'package:dating_app/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:dating_app/presentation/add_new_address_screen/binding/add_new_address_binding.dart';
import 'package:dating_app/presentation/subscription_screen/subscription_screen.dart';
import 'package:dating_app/presentation/subscription_screen/binding/subscription_binding.dart';
import 'package:dating_app/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:dating_app/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:dating_app/presentation/review_summary_screen/review_summary_screen.dart';
import 'package:dating_app/presentation/review_summary_screen/binding/review_summary_binding.dart';
import 'package:dating_app/presentation/help_screen/help_screen.dart';
import 'package:dating_app/presentation/help_screen/binding/help_binding.dart';
import 'package:dating_app/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:dating_app/presentation/terms_and_conditions_screen/binding/terms_and_conditions_binding.dart';
import 'package:dating_app/presentation/logout_screen/logout_screen.dart';
import 'package:dating_app/presentation/logout_screen/binding/logout_binding.dart';
import 'package:dating_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:dating_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
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
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
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
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
      ],
    ),
    GetPage(
      name: verificationOneScreen,
      page: () => VerificationOneScreen(),
      bindings: [
        VerificationOneBinding(),
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
      name: genderScreen,
      page: () => GenderScreen(),
      bindings: [
        GenderBinding(),
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
      page: () => InterestedScreen(),
      bindings: [
        InterestedBinding(),
      ],
    ),
    GetPage(
      name: compatibilityScreen,
      page: () => CompatibilityScreen(),
      bindings: [
        CompatibilityBinding(),
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
      name: addPicsScreen,
      page: () => AddPicsScreen(),
      bindings: [
        AddPicsBinding(),
      ],
    ),
    GetPage(
      name: addPicsOneScreen,
      page: () => AddPicsOneScreen(),
      bindings: [
        AddPicsOneBinding(),
      ],
    ),
    GetPage(
      name: descriptionScreen,
      page: () => DescriptionScreen(),
      bindings: [
        DescriptionBinding(),
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
      name: addManuallyAddressScreen,
      page: () => AddManuallyAddressScreen(),
      bindings: [
        AddManuallyAddressBinding(),
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
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
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
      name: addPicsOneScreen,
      page: () => AddPicsOneScreen(),
      bindings: [
        AddPicsOneBinding(),
      ],
    ),

    GetPage(
      name: detailsScreen,
      page: () => DetailsScreen(),
      bindings: [
        DetailsBinding(),
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
      name: chatsWithSendScreen,
      page: () => ChatsWithSendScreen(),
      bindings: [
        ChatsWithSendBinding(),
      ],
    ),

    GetPage(
      name: callScreen,
      page: () => CallScreen(),
      bindings: [
        CallBinding(),
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
      name: addressEditScreen,
      page: () => AddressEditScreen(),
      bindings: [
        AddressEditBinding(),
      ],
    ),
    GetPage(
      name: deleteAddressScreen,
      page: () => DeleteAddressScreen(),
      bindings: [
        DeleteAddressBinding(),
      ],
    ),
    GetPage(
      name: editAddressScreen,
      page: () => EditAddressScreen(),
      bindings: [
        EditAddressBinding(),
      ],
    ),
    GetPage(
      name: addNewAddressScreen,
      page: () => AddNewAddressScreen(),
      bindings: [
        AddNewAddressBinding(),
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
      name: termsAndConditionsScreen,
      page: () => TermsAndConditionsScreen(),
      bindings: [
        TermsAndConditionsBinding(),
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
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
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
