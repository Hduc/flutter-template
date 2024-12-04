import 'package:get/get.dart';
import 'package:hair_salon_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:hair_salon_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:hair_salon_app/presentation/book_appoiment_one_screen/binding/book_appoiment_one_binding.dart';
import 'package:hair_salon_app/presentation/book_appoiment_one_screen/book_appoiment_one_screen.dart';
import 'package:hair_salon_app/presentation/book_appoiment_screen/binding/book_appoiment_binding.dart';
import 'package:hair_salon_app/presentation/book_appoiment_screen/book_appoiment_screen.dart';
import 'package:hair_salon_app/presentation/book_appoiment_two_screen/binding/book_appoiment_two_binding.dart';
import 'package:hair_salon_app/presentation/book_appoiment_two_screen/book_appoiment_two_screen.dart';
import 'package:hair_salon_app/presentation/call_screen/binding/call_binding.dart';
import 'package:hair_salon_app/presentation/call_screen/call_screen.dart';
import 'package:hair_salon_app/presentation/cancel_booking_payment_screen/binding/cancel_booking_payment_binding.dart';
import 'package:hair_salon_app/presentation/cancel_booking_payment_screen/cancel_booking_payment_screen.dart';
import 'package:hair_salon_app/presentation/cancel_booking_screen/binding/cancel_booking_binding.dart';
import 'package:hair_salon_app/presentation/cancel_booking_screen/cancel_booking_screen.dart';
import 'package:hair_salon_app/presentation/categories_screen/binding/categories_binding.dart';
import 'package:hair_salon_app/presentation/categories_screen/categories_screen.dart';
import 'package:hair_salon_app/presentation/chat_call_screen/binding/chat_call_binding.dart';
import 'package:hair_salon_app/presentation/chat_call_screen/chat_call_screen.dart';
import 'package:hair_salon_app/presentation/chat_one_screen/binding/chat_one_binding.dart';
import 'package:hair_salon_app/presentation/chat_one_screen/chat_one_screen.dart';
import 'package:hair_salon_app/presentation/confirm_you_cancel_order_and_money_details_screen/binding/confirm_you_cancel_order_and_money_details_binding.dart';
import 'package:hair_salon_app/presentation/confirm_you_cancel_order_and_money_details_screen/confirm_you_cancel_order_and_money_details_screen.dart';
import 'package:hair_salon_app/presentation/e_reciept_screen/binding/e_reciept_binding.dart';
import 'package:hair_salon_app/presentation/e_reciept_screen/e_reciept_screen.dart';
import 'package:hair_salon_app/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:hair_salon_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:hair_salon_app/presentation/empty_notification_screen/binding/empty_notification_binding.dart';
import 'package:hair_salon_app/presentation/empty_notification_screen/empty_notification_screen.dart';
import 'package:hair_salon_app/presentation/empty_payment_screen/binding/empty_payment_binding.dart';
import 'package:hair_salon_app/presentation/empty_payment_screen/empty_payment_screen.dart';
import 'package:hair_salon_app/presentation/explore_one_screen/binding/explore_one_binding.dart';
import 'package:hair_salon_app/presentation/explore_one_screen/explore_one_screen.dart';
import 'package:hair_salon_app/presentation/fill_your_profile_screen/binding/fill_your_profile_binding.dart';
import 'package:hair_salon_app/presentation/fill_your_profile_screen/fill_your_profile_screen.dart';
import 'package:hair_salon_app/presentation/forget_password1_screen/binding/forget_password1_binding.dart';
import 'package:hair_salon_app/presentation/forget_password1_screen/forget_password1_screen.dart';
import 'package:hair_salon_app/presentation/forget_password_screen/binding/forget_password_binding.dart';
import 'package:hair_salon_app/presentation/forget_password_screen/forget_password_screen.dart';
import 'package:hair_salon_app/presentation/haircut_with_categorie_one_screen/binding/haircut_with_categorie_one_binding.dart';
import 'package:hair_salon_app/presentation/haircut_with_categorie_one_screen/haircut_with_categorie_one_screen.dart';
import 'package:hair_salon_app/presentation/haircut_with_categorie_screen/binding/haircut_with_categorie_binding.dart';
import 'package:hair_salon_app/presentation/haircut_with_categorie_screen/haircut_with_categorie_screen.dart';
import 'package:hair_salon_app/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:hair_salon_app/presentation/home_page_screen/home_page_screen.dart';
import 'package:hair_salon_app/presentation/inbox_call_screen/binding/inbox_call_binding.dart';
import 'package:hair_salon_app/presentation/inbox_call_screen/inbox_call_screen.dart';
import 'package:hair_salon_app/presentation/location_screen/binding/location_binding.dart';
import 'package:hair_salon_app/presentation/location_screen/location_screen.dart';
import 'package:hair_salon_app/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:hair_salon_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:hair_salon_app/presentation/login_with_error_screen/binding/login_with_error_binding.dart';
import 'package:hair_salon_app/presentation/login_with_error_screen/login_with_error_screen.dart';
import 'package:hair_salon_app/presentation/my_bookmark_screen/binding/my_bookmark_binding.dart';
import 'package:hair_salon_app/presentation/my_bookmark_screen/my_bookmark_screen.dart';
import 'package:hair_salon_app/presentation/nearby_location1_screen/binding/nearby_location1_binding.dart';
import 'package:hair_salon_app/presentation/nearby_location1_screen/nearby_location1_screen.dart';
import 'package:hair_salon_app/presentation/nearby_location_one1_screen/binding/nearby_location_one1_binding.dart';
import 'package:hair_salon_app/presentation/nearby_location_one1_screen/nearby_location_one1_screen.dart';
import 'package:hair_salon_app/presentation/nearby_location_screen/binding/nearby_location_binding.dart';
import 'package:hair_salon_app/presentation/nearby_location_screen/nearby_location_screen.dart';
import 'package:hair_salon_app/presentation/nearby_location_three_screen/binding/nearby_location_three_binding.dart';
import 'package:hair_salon_app/presentation/nearby_location_three_screen/nearby_location_three_screen.dart';
import 'package:hair_salon_app/presentation/nearby_location_two_screen/binding/nearby_location_two_binding.dart';
import 'package:hair_salon_app/presentation/nearby_location_two_screen/nearby_location_two_screen.dart';
import 'package:hair_salon_app/presentation/notification_screen/binding/notification_binding.dart';
import 'package:hair_salon_app/presentation/notification_screen/notification_screen.dart';
import 'package:hair_salon_app/presentation/onboading_one_screen/binding/onboading_one_binding.dart';
import 'package:hair_salon_app/presentation/onboading_one_screen/onboading_one_screen.dart';
import 'package:hair_salon_app/presentation/onboading_three_screen/binding/onboading_three_binding.dart';
import 'package:hair_salon_app/presentation/onboading_three_screen/onboading_three_screen.dart';
import 'package:hair_salon_app/presentation/onboading_two_screen/binding/onboading_two_binding.dart';
import 'package:hair_salon_app/presentation/onboading_two_screen/onboading_two_screen.dart';
import 'package:hair_salon_app/presentation/oue_pakage_with_details_screen/binding/oue_pakage_with_details_binding.dart';
import 'package:hair_salon_app/presentation/oue_pakage_with_details_screen/oue_pakage_with_details_screen.dart';
import 'package:hair_salon_app/presentation/our_gallery_screen/binding/our_gallery_binding.dart';
import 'package:hair_salon_app/presentation/our_gallery_screen/our_gallery_screen.dart';
import 'package:hair_salon_app/presentation/our_pakage_screen/binding/our_pakage_binding.dart';
import 'package:hair_salon_app/presentation/our_pakage_screen/our_pakage_screen.dart';
import 'package:hair_salon_app/presentation/our_services_one_screen/binding/our_services_one_binding.dart';
import 'package:hair_salon_app/presentation/our_services_one_screen/our_services_one_screen.dart';
import 'package:hair_salon_app/presentation/our_services_screen/binding/our_services_binding.dart';
import 'package:hair_salon_app/presentation/our_services_screen/our_services_screen.dart';
import 'package:hair_salon_app/presentation/payment_methods_screen/binding/payment_methods_binding.dart';
import 'package:hair_salon_app/presentation/payment_methods_screen/payment_methods_screen.dart';
import 'package:hair_salon_app/presentation/payment_one_screen/binding/payment_one_binding.dart';
import 'package:hair_salon_app/presentation/payment_one_screen/payment_one_screen.dart';
import 'package:hair_salon_app/presentation/payment_screen/binding/payment_binding.dart';
import 'package:hair_salon_app/presentation/payment_screen/payment_screen.dart';
import 'package:hair_salon_app/presentation/payment_two_screen/binding/payment_two_binding.dart';
import 'package:hair_salon_app/presentation/payment_two_screen/payment_two_screen.dart';
import 'package:hair_salon_app/presentation/privacy_and_policy_screen/binding/privacy_and_policy_binding.dart';
import 'package:hair_salon_app/presentation/privacy_and_policy_screen/privacy_and_policy_screen.dart';
import 'package:hair_salon_app/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:hair_salon_app/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:hair_salon_app/presentation/review_summary_screen/binding/review_summary_binding.dart';
import 'package:hair_salon_app/presentation/review_summary_screen/review_summary_screen.dart';
import 'package:hair_salon_app/presentation/reviews_one_screen/binding/reviews_one_binding.dart';
import 'package:hair_salon_app/presentation/reviews_one_screen/reviews_one_screen.dart';
import 'package:hair_salon_app/presentation/reviews_screen/binding/reviews_binding.dart';
import 'package:hair_salon_app/presentation/reviews_screen/reviews_screen.dart';
import 'package:hair_salon_app/presentation/search_here_twelve_screen/binding/search_here_twelve_binding.dart';
import 'package:hair_salon_app/presentation/search_here_twelve_screen/search_here_twelve_screen.dart';
import 'package:hair_salon_app/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:hair_salon_app/presentation/search_result_screen/search_result_screen.dart';
import 'package:hair_salon_app/presentation/search_screen/binding/search_binding.dart';
import 'package:hair_salon_app/presentation/search_screen/search_screen.dart';
import 'package:hair_salon_app/presentation/security_disable_screen/binding/security_disable_binding.dart';
import 'package:hair_salon_app/presentation/security_disable_screen/security_disable_screen.dart';
import 'package:hair_salon_app/presentation/security_enable_screen/binding/security_enable_binding.dart';
import 'package:hair_salon_app/presentation/security_enable_screen/security_enable_screen.dart';
import 'package:hair_salon_app/presentation/select_specialist_screen/binding/select_specialist_binding.dart';
import 'package:hair_salon_app/presentation/select_specialist_screen/select_specialist_screen.dart';
import 'package:hair_salon_app/presentation/service_detail_five_screen/binding/service_detail_five_binding.dart';
import 'package:hair_salon_app/presentation/service_detail_five_screen/service_detail_five_screen.dart';
import 'package:hair_salon_app/presentation/service_detail_four_screen/binding/service_detail_four_binding.dart';
import 'package:hair_salon_app/presentation/service_detail_four_screen/service_detail_four_screen.dart';
import 'package:hair_salon_app/presentation/service_detail_one_screen/binding/service_detail_one_binding.dart';
import 'package:hair_salon_app/presentation/service_detail_one_screen/service_detail_one_screen.dart';
import 'package:hair_salon_app/presentation/service_detail_screen/binding/service_detail_binding.dart';
import 'package:hair_salon_app/presentation/service_detail_screen/service_detail_screen.dart';
import 'package:hair_salon_app/presentation/service_detail_three_screen/binding/service_detail_three_binding.dart';
import 'package:hair_salon_app/presentation/service_detail_three_screen/service_detail_three_screen.dart';
import 'package:hair_salon_app/presentation/service_detail_two_container1_screen/binding/service_detail_two_container1_binding.dart';
import 'package:hair_salon_app/presentation/service_detail_two_container1_screen/service_detail_two_container1_screen.dart';
import 'package:hair_salon_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:hair_salon_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:hair_salon_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:hair_salon_app/presentation/splash_screen/splash_screen.dart';
import 'package:hair_salon_app/presentation/verification_one_screen/binding/verification_one_binding.dart';
import 'package:hair_salon_app/presentation/verification_one_screen/verification_one_screen.dart';
import 'package:hair_salon_app/presentation/verification_screen/binding/verification_binding.dart';
import 'package:hair_salon_app/presentation/verification_screen/verification_screen.dart';
import 'package:hair_salon_app/presentation/you_have_been_arrived_screen/binding/you_have_been_arrived_binding.dart';
import 'package:hair_salon_app/presentation/you_have_been_arrived_screen/you_have_been_arrived_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboadingOneScreen = '/onboading_one_screen';

  static const String onboadingTwoScreen = '/onboading_two_screen';

  static const String onboadingThreeScreen = '/onboading_three_screen';

  static const String logInScreen = '/log_in_screen';

  static const String loginWithErrorScreen = '/login_with_error_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String forgetPassword1Screen = '/forget_password1_screen';

  static const String verificationOneScreen = '/verification_one_screen';

  static const String verificationScreen = '/verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String nearbyLocationScreen = '/nearby_location_screen';

  // static const String nearbyLocationOneScreen = '/nearby_location_one_screen';

  static const String nearbyLocationThreeScreen =
      '/nearby_location_three_screen';

  static const String nearbyLocation1Screen = '/nearby_location1_screen';

  static const String nearbyLocationTwoScreen = '/nearby_location_two_screen';

  static const String nearbyLocationOne1Screen = '/nearby_location_one1_screen';

  static const String serviceDetailThreeScreen = '/service_detail_three_screen';

  static const String serviceDetailFiveScreen = '/service_detail_five_screen';

  static const String serviceDetailOneScreen = '/service_detail_one_screen';

  static const String serviceDetailTwoContainerPage =
      '/service_detail_two_container_page';

  static const String serviceDetailTwoContainer1Screen =
      '/service_detail_two_container1_screen';

  static const String serviceDetailScreen = '/service_detail_screen';

  static const String serviceDetailFourScreen = '/service_detail_four_screen';

  static const String selectSpecialistScreen = '/select_specialist_screen';

  static const String bookAppoimentScreen = '/book_appoiment_screen';

  static const String paymentMethodsScreen = '/payment_methods_screen';

  static const String reviewSummaryScreen = '/review_summary_screen';

  static const String eRecieptScreen = '/e_reciept_screen';

  static const String myBookmarkScreen = '/my_bookmark_screen';

  static const String exploreOneScreen = '/explore_one_screen';

  static const String exploreDalonDetailsPage = '/explore_dalon_details_page';

  static const String locationScreen = '/location_screen';

  static const String youHaveBeenArrivedScreen =
      '/you_have_been_arrived_screen';

  static const String exploreScreen = '/explore_screen';

  static const String searchHereTwelveScreen = '/search_here_twelve_screen';

  static const String searchScreen = '/search_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String myBookingUpcomingPage = '/my_booking_upcoming_page';

  static const String myBookingCompletePage = '/my_booking_complete_page';

  static const String myBookingCancelledPage = '/my_booking_cancelled_page';

  static const String myBookingCancelledTabContainerPage =
      '/my_booking_cancelled_tab_container_page';

  static const String cancelBookingScreen = '/cancel_booking_screen';

  static const String cancelBookingPaymentScreen =
      '/cancel_booking_payment_screen';

  static const String confirmYouCancelOrderAndMoneyDetailsScreen =
      '/confirm_you_cancel_order_and_money_details_screen';

  static const String inboxCallScreen = '/inbox_call_screen';

  static const String chatPage = '/chat_page';

  static const String chatCallScreen = '/chat_call_screen';

  static const String chatOneScreen = '/chat_one_screen';

  static const String callScreen = '/call_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String reviewsOneScreen = '/reviews_one_screen';

  static const String ourServicesScreen = '/our_services_screen';

  static const String haircutWithCategorieScreen =
      '/haircut_with_categorie_screen';

  static const String haircutWithCategorieOneScreen =
      '/haircut_with_categorie_one_screen';

  static const String ourServicesOneScreen = '/our_services_one_screen';

  static const String bookAppoimentTwoScreen = '/book_appoiment_two_screen';

  static const String bookAppoimentOneScreen = '/book_appoiment_one_screen';

  static const String ourPakageScreen = '/our_pakage_screen';

  static const String ouePakageWithDetailsScreen =
      '/oue_pakage_with_details_screen';

  static const String ourGalleryScreen = '/our_gallery_screen';

  static const String profilePage = '/profile_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String fillYourProfileScreen = '/fill_your_profile_screen';

  static const String emptyNotificationScreen = '/empty_notification_screen';

  static const String notificationScreen = '/notification_screen';

  static const String emptyPaymentScreen = '/empty_payment_screen';

  static const String paymentScreen = '/payment_screen';

  static const String paymentTwoScreen = '/payment_two_screen';

  static const String paymentOneScreen = '/payment_one_screen';

  static const String securityDisableScreen = '/security_disable_screen';

  static const String securityEnableScreen = '/security_enable_screen';

  static const String privacyAndPolicyScreen = '/privacy_and_policy_screen';

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
      name: onboadingOneScreen,
      page: () => OnboadingOneScreen(),
      bindings: [
        OnboadingOneBinding(),
      ],
    ),
    GetPage(
      name: onboadingTwoScreen,
      page: () => OnboadingTwoScreen(),
      bindings: [
        OnboadingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboadingThreeScreen,
      page: () => OnboadingThreeScreen(),
      bindings: [
        OnboadingThreeBinding(),
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
      name: loginWithErrorScreen,
      page: () => LoginWithErrorScreen(),
      bindings: [
        LoginWithErrorBinding(),
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
      name: forgetPasswordScreen,
      page: () => ForgetPasswordScreen(),
      bindings: [
        ForgetPasswordBinding(),
      ],
    ),
    GetPage(
      name: forgetPassword1Screen,
      page: () => ForgetPassword1Screen(),
      bindings: [
        ForgetPassword1Binding(),
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
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
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
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
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
      name: nearbyLocationScreen,
      page: () => NearbyLocationScreen(),
      bindings: [
        NearbyLocationBinding(),
      ],
    ),
    // GetPage(
    //   name: nearbyLocationOneScreen,
    //   page: () => NearbyLocationOneScreen(),
    //   bindings: [
    //     NearbyLocationOneBinding(),
    //   ],
    // ),
    GetPage(
      name: nearbyLocationThreeScreen,
      page: () => NearbyLocationThreeScreen(),
      bindings: [
        NearbyLocationThreeBinding(),
      ],
    ),
    GetPage(
      name: nearbyLocation1Screen,
      page: () => NearbyLocation1Screen(),
      bindings: [
        NearbyLocation1Binding(),
      ],
    ),
    GetPage(
      name: nearbyLocationTwoScreen,
      page: () => NearbyLocationTwoScreen(),
      bindings: [
        NearbyLocationTwoBinding(),
      ],
    ),
    GetPage(
      name: nearbyLocationOne1Screen,
      page: () => NearbyLocationOne1Screen(),
      bindings: [
        NearbyLocationOne1Binding(),
      ],
    ),
    GetPage(
      name: serviceDetailThreeScreen,
      page: () => ServiceDetailThreeScreen(),
      bindings: [
        ServiceDetailThreeBinding(),
      ],
    ),
    GetPage(
      name: serviceDetailFiveScreen,
      page: () => ServiceDetailFiveScreen(),
      bindings: [
        ServiceDetailFiveBinding(),
      ],
    ),
    GetPage(
      name: serviceDetailOneScreen,
      page: () => ServiceDetailOneScreen(),
      bindings: [
        ServiceDetailOneBinding(),
      ],
    ),
    GetPage(
      name: serviceDetailTwoContainer1Screen,
      page: () => ServiceDetailTwoContainer1Screen(),
      bindings: [
        ServiceDetailTwoContainer1Binding(),
      ],
    ),
    GetPage(
      name: serviceDetailScreen,
      page: () => ServiceDetailScreen(),
      bindings: [
        ServiceDetailBinding(),
      ],
    ),
    GetPage(
      name: serviceDetailFourScreen,
      page: () => ServiceDetailFourScreen(),
      bindings: [
        ServiceDetailFourBinding(),
      ],
    ),
    GetPage(
      name: selectSpecialistScreen,
      page: () => SelectSpecialistScreen(),
      bindings: [
        SelectSpecialistBinding(),
      ],
    ),
    GetPage(
      name: bookAppoimentScreen,
      page: () => BookAppoimentScreen(),
      bindings: [
        BookAppoimentBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodsScreen,
      page: () => PaymentMethodsScreen(),
      bindings: [
        PaymentMethodsBinding(),
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
      name: eRecieptScreen,
      page: () => ERecieptScreen(),
      bindings: [
        ERecieptBinding(),
      ],
    ),
    GetPage(
      name: myBookmarkScreen,
      page: () => MyBookmarkScreen(),
      bindings: [
        MyBookmarkBinding(),
      ],
    ),
    GetPage(
      name: exploreOneScreen,
      page: () => ExploreOneScreen(),
      bindings: [
        ExploreOneBinding(),
      ],
    ),
    GetPage(
      name: locationScreen,
      page: () => LocationScreen(),
      bindings: [
        LocationBinding(),
      ],
    ),
    GetPage(
      name: youHaveBeenArrivedScreen,
      page: () => YouHaveBeenArrivedScreen(),
      bindings: [
        YouHaveBeenArrivedBinding(),
      ],
    ),
    // GetPage(
    //   name: exploreScreen,
    //   page: () => ExploreScreen(),
    //   bindings: [
    //     ExploreBinding(),
    //   ],
    // ),
    GetPage(
      name: searchHereTwelveScreen,
      page: () => SearchHereTwelveScreen(),
      bindings: [
        SearchHereTwelveBinding(),
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
      name: cancelBookingScreen,
      page: () => CancelBookingScreen(),
      bindings: [
        CancelBookingBinding(),
      ],
    ),
    GetPage(
      name: cancelBookingPaymentScreen,
      page: () => CancelBookingPaymentScreen(),
      bindings: [
        CancelBookingPaymentBinding(),
      ],
    ),
    GetPage(
      name: confirmYouCancelOrderAndMoneyDetailsScreen,
      page: () => ConfirmYouCancelOrderAndMoneyDetailsScreen(),
      bindings: [
        ConfirmYouCancelOrderAndMoneyDetailsBinding(),
      ],
    ),
    GetPage(
      name: inboxCallScreen,
      page: () => InboxCallScreen(),
      bindings: [
        InboxCallBinding(),
      ],
    ),
    GetPage(
      name: chatCallScreen,
      page: () => ChatCallScreen(),
      bindings: [
        ChatCallBinding(),
      ],
    ),
    GetPage(
      name: chatOneScreen,
      page: () => ChatOneScreen(),
      bindings: [
        ChatOneBinding(),
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
      name: reviewsScreen,
      page: () => ReviewsScreen(),
      bindings: [
        ReviewsBinding(),
      ],
    ),
    GetPage(
      name: reviewsOneScreen,
      page: () => ReviewsOneScreen(),
      bindings: [
        ReviewsOneBinding(),
      ],
    ),
    GetPage(
      name: ourServicesScreen,
      page: () => OurServicesScreen(),
      bindings: [
        OurServicesBinding(),
      ],
    ),
    GetPage(
      name: haircutWithCategorieScreen,
      page: () => HaircutWithCategorieScreen(),
      bindings: [
        HaircutWithCategorieBinding(),
      ],
    ),
    GetPage(
      name: haircutWithCategorieOneScreen,
      page: () => HaircutWithCategorieOneScreen(),
      bindings: [
        HaircutWithCategorieOneBinding(),
      ],
    ),
    GetPage(
      name: ourServicesOneScreen,
      page: () => OurServicesOneScreen(),
      bindings: [
        OurServicesOneBinding(),
      ],
    ),
    GetPage(
      name: bookAppoimentTwoScreen,
      page: () => BookAppoimentTwoScreen(),
      bindings: [
        BookAppoimentTwoBinding(),
      ],
    ),
    GetPage(
      name: bookAppoimentOneScreen,
      page: () => BookAppoimentOneScreen(),
      bindings: [
        BookAppoimentOneBinding(),
      ],
    ),
    GetPage(
      name: ourPakageScreen,
      page: () => OurPakageScreen(),
      bindings: [
        OurPakageBinding(),
      ],
    ),
    GetPage(
      name: ouePakageWithDetailsScreen,
      page: () => OuePakageWithDetailsScreen(),
      bindings: [
        OuePakageWithDetailsBinding(),
      ],
    ),
    GetPage(
      name: ourGalleryScreen,
      page: () => OurGalleryScreen(),
      bindings: [
        OurGalleryBinding(),
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
      name: fillYourProfileScreen,
      page: () => FillYourProfileScreen(),
      bindings: [
        FillYourProfileBinding(),
      ],
    ),
    GetPage(
      name: emptyNotificationScreen,
      page: () => EmptyNotificationScreen(),
      bindings: [
        EmptyNotificationBinding(),
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
      name: emptyPaymentScreen,
      page: () => EmptyPaymentScreen(),
      bindings: [
        EmptyPaymentBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: paymentTwoScreen,
      page: () => PaymentTwoScreen(),
      bindings: [
        PaymentTwoBinding(),
      ],
    ),
    GetPage(
      name: paymentOneScreen,
      page: () => PaymentOneScreen(),
      bindings: [
        PaymentOneBinding(),
      ],
    ),
    GetPage(
      name: securityDisableScreen,
      page: () => SecurityDisableScreen(),
      bindings: [
        SecurityDisableBinding(),
      ],
    ),
    GetPage(
      name: securityEnableScreen,
      page: () => SecurityEnableScreen(),
      bindings: [
        SecurityEnableBinding(),
      ],
    ),
    GetPage(
      name: privacyAndPolicyScreen,
      page: () => PrivacyAndPolicyScreen(),
      bindings: [
        PrivacyAndPolicyBinding(),
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
